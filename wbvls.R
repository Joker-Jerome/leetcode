#!/usr/bin/env Rscript


library(glmnet)
library(genio)
library(msm) # for truncated normal distribution
library(Rcpp)
library(MASS)
library(wCorr)

######## GTEx data ######### 
#  Input: gene_idx, genotype files, expression files
################################# 


args <-  commandArgs(trailingOnly=TRUE)
chr_idx <- as.numeric(args[1])
gene_idx <-  as.numeric(args[2])
genotype_dir <- paste0(args[3])
expr_dir <- paste0(args[4])
output_dir <- paste0(args[5])
par_num <- as.numeric(args[6]) # FIX ME!

# Extract genotype matrix of gene g
extract_genotype <- function(gene_idx, chr_idx, genotype_dir, expr_vec) {
  gene_dir <- paste0(genotype_dir,'chr', chr_idx, '/', expr_vec[gene_idx], "/", expr_vec[gene_idx])
  genotype_info <- read_plink(gene_dir)
  
  print(paste0("INFO: genotype matrix dimension:", dim(genotype_info$X)[1], " * ", dim(genotype_info$X)[2]))
  return(genotype_info)
}

# Fillin the NA in the genotype matrix with the mean 
fillin_na <- function(data) {
  for(i in 1:nrow(data)){
    data[i, is.na(data[i,])] <- mean(data[i,], na.rm = TRUE)  # Fill NA using number averaged on all samples
  }
  return(data)
}


# Extract expression files of gene g

extract_expr <- function(gene_idx, chr_idx, expr_dir,expr_vec, sampleNames) { # Note: files in genotype and expression are in different order. To match with genotype, here should use the order of expr_vec. 
  tissueVec <- list.files(paste0(expr_dir,'chr', chr_idx, '/', expr_vec[gene_idx],'/'))
  tissueNum <- length(tissueVec)
  print(paste0("INFO: Reading expression files:", expr_vec[gene_idx]))
  
  exprMat <- data.frame(sampleName = sampleNames)
   
  for (i in 1:tissueNum) {
    exprtemp <- read.table(paste0(expr_dir,'chr', chr_idx, '/',expr_vec[gene_idx],'/', tissueVec[i]))
    colnames(exprtemp)[1] <- "sampleName"
    colnames(exprtemp)[2] <- gsub(pattern = "\\.adj_expr$","", tissueVec[i]) 
    exprMat = merge(exprMat, exprtemp, by = "sampleName", all.x = T)

  }
  row.names(exprMat) <- sampleNames
  if (tissueNum == 1) {
    sampleName <- colnames(exprMat[2])
    exprMat <- data.frame(exprMat[,-1]) # avoid the matrix reducing to vector
    row.names(exprMat) <- sampleNames
    colnames(exprMat) <- sampleName
  }
  else{
    exprMat <- exprMat[,-1]
  }
  return(exprMat)
}

# Screen for all the training samples
training_sample_agg <- function(tissue_id, genotype, exprmat) {
  Y_temp <- exprmat[-which(is.na(exprmat[,tissue_id])),tissue_id]
  X_temp <- genotype[-which(is.na(exprmat[,tissue_id])),]
  # split data
  set.seed(7) # to make results reproducible
  train <- sample(1:nrow(X_temp), floor(nrow(X_temp) * 0.7)) # Split the data.
  x.train <- X_temp[train,]
  y.train <- Y_temp[train]
  return(list(X=x.train, Y=y.train))
}

# Screen for all the samples
training_sample_agg_all <- function(tissue_id, genotype, exprmat) {
  Y_temp <- exprmat[-which(is.na(exprmat[,tissue_id])),tissue_id]
  X_temp <- genotype[-which(is.na(exprmat[,tissue_id])),]
  # split data
  set.seed(7) # to make results reproducible
  return(list(X=X_temp, Y=Y_temp))
}

# record directions of the selected SNPs (lower bound is sufficient)
find_direction <- function(tissue_id,nonZeroCoef_idx_model) {
  selectedSNPs <- nonZeroCoef_idx_model[[tissue_id]]
  return(sapply(selectedSNPs, function(i) bl[i])) # use bl would be easier than coefPredMat, but not applicable to normal model.
}

##### Weighted BVLS ENET Regression

fit_enet <- function(tissue_id, genotype, exprmat) { 
  Y_temp <- exprmat[-which(is.na(exprmat[,tissue_id])),tissue_id]
  X_temp <- genotype[-which(is.na(exprmat[,tissue_id])),]
  # split data
  set.seed(7) # to make results reproducible
  train <- sample(1:nrow(X_temp), floor(nrow(X_temp) * 0.7)) # Split the data.
  test <- (-train)
  x.train <- X_temp[train,]
  x.test <- X_temp[test,]
  y.train <- Y_temp[train]
  y.test  <- Y_temp[test]

  optimal_alpha <- 0 # ridge 
  R2 <- 0
  set.seed(7)
  foldid=sample(1:5,size=length(y.train),replace=TRUE)
 cv1=cv.glmnet(x,y,foldid=foldid,alpha=1)
  
  
  # tuning alpha   
  for (alpha in seq(0,1,0.05)){
    set.seed(7)
    enet_temp <- cv.glmnet(x.train, y.train, type.measure = 'mse', family = 'gaussian', foldid=foldid,
                           alpha = alpha, intercept = F, lower.limits = bl, upper.limits = bu)
    Y_pred <- predict(enet_temp, s = enet_temp$lambda.min, newx = x.train)

    # summarize the performances
    if (length(which(Y_pred != 0))!=0) {
      R2_tmp <- cor(y.train, Y_pred)^2
    } else {
      R2_tmp = 0
    }

    # update the optimal parameters if needed
    if (R2_tmp >= R2) { 
      optimal_alpha <- alpha
      R2 <- R2_tmp
    }
  }
   
  R2_train = R2  
  # fitting the model for testing 
  set.seed(7)
  enet.mod <- cv.glmnet(x.train, y.train, type.measure = 'mse', family = 'gaussian', foldid=foldid,
                        alpha = optimal_alpha, intercept = F, 
                        lower.limits = bl[[tissue_id]], upper.limits = bu[[tissue_id]])
  coefPred <- predict(enet.mod, s = enet.mod$lambda.min, type = 'coefficients')[-1] # delete 0 for intercept
  Y_pred <- predict(enet.mod, s = enet.mod$lambda.min, newx = x.test)
  if (length(which(Y_pred != 0))!=0) {
    R2 <- cor(y.test, Y_pred)^2
  }
  else {R2 = 0}
    
  # fitting the model for final coefficient estimates
  set.seed(7)
  enet.mod <- cv.glmnet(X_temp, Y_temp, type.measure = 'mse', family = 'gaussian', #foldid=foldid,
                        alpha = optimal_alpha, intercept = F, ntunes = 5,
                        lower.limits = bl_all[[tissue_id]], upper.limits = bu_all[[tissue_id]])
  coefPred <- predict(enet.mod, s = enet.mod$lambda.min, type = 'coefficients')[-1] # delete 0 for intercept
  print("INFO: WEIGHTED ENET ALL ")
  return(list(modelName = paste0('ENET_alpha', optimal_alpha),tissueID = tissue_id, 
              coefPred = coefPred, R2 = R2, tissueSampleSize = length(Y_temp), trainingR2 = R2_train))  

}

######### TO run locally
#expr_dir <- '/Users/mac/Desktop/chr_expr_test/'
#genotype_dir <- '/Users/mac/Desktop/chr_test/'
#gene_idx <- 1
#chr_idx <- 21
#output_dir <- '/Users/mac/Desktop/results_real_local/'
#################
# load files with cor_matrix and tissue2idx

load('/gpfs/loomis/project/zhao/zy92/twas_bvls/data/tissue_cor_mtx_49tissues.RData')
expr_vec <- list.files(paste0(expr_dir, 'chr', chr_idx, '/')) 
for (i in gene_idx) {
    gene_idx = i
    print(paste0("INFO: ", i, " / ", length(expr_vec)))

    # check if the file exists 
    rfilename <- paste0(output_dir,'pruned/chr',chr_idx, '/','weighted_bvls_enet_un_pearson_gene',gene_idx, '_', prior_par, '.RData')
    filename <- paste0(output_dir,'weights/WEIGHTED_BVLS_ENET_UN_PEARSON/beta', as.character(prior_par), '/chr',chr_idx, '/',expr_vec[gene_idx], '/weights.txt')
    info = file.info(filename)




    #Jointly train across all tissues (univariate regression of each SNP) to get the "standard" direction 

    if ((!file.exists(rfilename)) | (!file.exists(filename)) | (info$size == 0) ) {

     #ERROR HANDLING skip some genes 
     tryCatch(
         {
            genotype <- extract_genotype(gene_idx, chr_idx, genotype_dir, expr_vec)$X
            genotype <- t(fillin_na(genotype)) # genotype matrix of gene g
            sampleNames <- rownames(genotype)
          
        #print(e)
      #if (length(e) == 0) {


        exprmat = extract_expr(gene_idx, chr_idx, expr_dir ,expr_vec, sampleNames)
        tissue_num <- ncol(exprmat)



        ######## Model Training ######### 
        #  Input: expression levels(Y), genotype matrix(X)
        #  Output: effect sizes of SNPs on expression of gene g in tissue p

        ################################# 


        print("INFO: Training ...")
        set.seed(7) # to make results reproducible

        # Direction boundries
        bl <- list()
        bu <- list()
        bl_all <- list()
        bu_all <- list()
        coef_list <- list()
        x_list <- list()
        y_list <- list()
        x_list_all <- list()
        y_list_all <- list()
        expr_agg <- c()
        expr_agg_all <- c()
        weight_list <- list()
        sample_size_list <- list()
        tissue_list <- list()
        tissue_vec_gene <- colnames(exprmat)
        results_enet_list <- list()
             
        
        # For all the tissues
        for (i in 1:tissue_num) {

            training_sample_output <- training_sample_agg(i, genotype, exprmat)
            training_sample_output_all <- training_sample_agg_all(i, genotype, exprmat)
            tissue_list[[i]] <- colnames(exprmat)[i]
            y_list[[i]] <- training_sample_output$Y
            y_list_all[[i]] <- training_sample_output_all$Y
            x_list[[i]] <- training_sample_output$X
            x_list_all[[i]] <- training_sample_output_all$X
            expr_agg <- c(expr_agg, training_sample_output$Y)
            expr_agg_all <- c(expr_agg, training_sample_output_all$Y)
            if (i == 1) {
                X_agg <- training_sample_output$X
                X_agg_all <- training_sample_output_all$X
            } else {
                X_agg <- rbind(X_agg, training_sample_output$X)
                X_agg_all <- rbind(X_agg_all, training_sample_output_all$X)
            }
            sample_size_list[[i]] <- length(y_list[[i]])
            sample_size_list_all[[i]] <- length(y_list_all[[i]])

        }                               

        # Set boundaries for effect sizes

        tissue_idx_gene <- sapply(tissue_vec_gene, function(x) tissue2idx[[x]] )
        cor_matrix <- cor_matrix[tissue_idx_gene, tissue_idx_gene]
                                  
                                  
        # Tuning tissue weight parameters 
        for (par in 1:par_num) {
            prior_par <- 10^(par - 1)
        
            # 
            for (i in 1:tissue_num)  {
                print(paste0("INFO: tissue number ", tissue_num))
                print(paste0("INFO: calculate the directions for tissue ", i))
                
                # cor matrix usage 
                if (tissue_num == 1) {
                    cor_vec <- cor_matrix
                } else {
                    cor_vec <- cor_matrix[i, ]
                }
                weight_vec <- c()
                tissue_vec <- rep(1, tissue_num)
                tissue_vec[i] <- prior_par
                
                # direction calculations for training-testing purpose 
                for (j in 1:tissue_num) {
                    weight_vec <- c(weight_vec, rep(cor_vec[j]*tissue_vec[j], sample_size_list[[j]]))
                }
                weight_list[[i]] <- weight_vec 
                coef_std <- apply(X_agg, 2, function(m) weightedCorr(x = m, y = expr_agg, weights = weight_vec, method = 'Pearson'))#'Pearson'))
                bl[[i]] <- ifelse(coef_std > 0, 0, -Inf)
                bu[[i]] <- ifelse(coef_std < 0, 0, Inf)
                if (sum(is.na(coef_std)) > 0) {
                    na_idx <- which(is.na(coef_std))
                    bl[[i]][na_idx] <- -Inf
                    bu[[i]][na_idx] <- Inf
                }
                  
                # directions for final training purpose 
                for (j in 1:tissue_num) {
                    weight_vec <- c(weight_vec, rep(cor_vec[j]*tissue_vec[j], sample_size_list_all[[j]]))
                }
                weight_list[[i]] <- weight_vec 
                coef_std <- apply(X_agg_all, 2, function(m) weightedCorr(x = m, y = expr_agg_all, weights = weight_vec, method = 'Pearson'))#'Pearson'))
                bl_all[[i]] <- ifelse(coef_std > 0, 0, -Inf)
                bu_all[[i]] <- ifelse(coef_std < 0, 0, Inf)
                if (sum(is.na(coef_std)) > 0) {
                    na_idx <- which(is.na(coef_std))
                    bl_all[[i]][na_idx] <- -Inf
                    bu_all[[i]][na_idx] <- Inf
                }
            }                             

          

            # aggregating the results
            results_enet_list[[prior_par]] <- lapply(1:ncol(exprmat), fit_enet, genotype, exprmat)
            
        }

        # selecting the best models
        trainingR2_vec <- unlist(lapply(results_enet_list, function(x) x$trainingR2))
        optimal_par <- 10^(which.max(trainingR2_vec) - 1)
        results_enet <- results_enet_list[[optimal_par]]  
        modelName <- unlist(lapply(results_enet, '[[', 'modelName')) 
        tissueID <- unlist(lapply(results_enet, '[[', 'tissueID')) 
        tissueSampleSize <- unlist(lapply(results_enet, '[[', 'tissueSampleSize')) 
        R2 <- unlist(lapply(results_enet, '[[', 'R2'))
        coefPredMat <- data.frame(matrix(unlist(lapply(results_enet, '[[', 'coefPred')), nrow = ncol(genotype), ncol = ncol(exprmat)))
        nonZeroCoef_idx_enet <- lapply(1:tissue_num, function(x) which(coefPredMat[,x] !=0))

        

        nonZeroCoef_idx_dir_enet <- lapply(1:tissue_num, find_direction, nonZeroCoef_idx_enet)


        results_enet_agg <- data.frame(modelName_ENET = modelName, tissueID_ENET = tissueID, 
                                       tissueName = colnames(exprmat),tissueSampleSize_ENET = tissueSampleSize, R2_ENET = R2)

        results_tot <- cbind(geneID = rep(gene_idx,tissue_num),results_enet_agg)

        colnames(coefPredMat) <- colnames(exprmat)  # Tissue name
        rownames(coefPredMat) <- colnames(genotype) # SNP name

        weights_imputed <- data.frame(chr = rep(chr_idx, nrow(coefPredMat)), id = rownames(coefPredMat), coefPredMat)  # this will turn hepens - to . 
        colnames(weights_imputed)[-c(1:2)] <- colnames(exprmat) # change the tissue names to the original format
        head(weights_imputed)
        # save 
        obj1_name <- paste0('results_tot_',gene_idx)
        obj3_name <- paste0('nonZeroCoef_idx_enet_',gene_idx)
        obj6_name <- paste0('nonZeroCoef_idx_dir_enet_', gene_idx)


        assign(obj1_name, results_tot)
        assign(obj3_name, nonZeroCoef_idx_enet)
        assign(obj6_name, nonZeroCoef_idx_dir_enet)


        dir.create(paste0(output_dir,'pruned/chr',chr_idx, '/'), recursive = T,showWarnings = F)
        filename <- paste0(output_dir,'pruned/chr',chr_idx, '/','weighted_bvls_enet_un_pearson_gene',gene_idx, '.RData')
        #save(list = c(obj1_name, obj3_name, obj6_name), file=filename)
        save(list = c(obj1_name), file=filename)
        dir.create(paste0(output_dir,'weights/WEIGHTED_BVLS_ENET_UN_PEARSON/chr',chr_idx,'/',expr_vec[gene_idx]), recursive = T, showWarnings = F)
        write.table(weights_imputed, paste0(output_dir,'weights/WEIGHTED_BVLS_ENET_UN_PEARSON/chr',chr_idx, '/',expr_vec[gene_idx], '/weights.txt'), row.names = F, quote = F)


        }, error=function(e) print(e)
      )
      

    }
                        
}