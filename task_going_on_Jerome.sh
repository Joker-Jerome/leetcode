task going on: 
66356516_[0-9807]  bigmem,day, utmost_training_1  zy92   PD       0:00    2:00:00     1     1        32G (None)
66356517_[0-7864]  bigmem,day, utmost_training_2  zy92   PD       0:00    2:00:00     1     1        32G (None)
66356519_[0-8201]  bigmem,day, utmost_training_3  zy92   PD       0:00    2:00:00     1     1        32G (None)

dsqa -j 66356516 -f training_task_test_1.txt > re-run_jobs_66356516.txt 2> report_66356516.txt
dsqa -j 66356517 -f training_task_test_1.txt > re-run_jobs_66356517.txt 2> report_66356517.txt
dsqa -j 66356519 -f training_task_test_1.txt > re-run_jobs_66356519.txt 2> report_66356519.txt

dSQ --jobfile re-run_jobs_66356516.txt -J task_16 --mem-per-cpu=96G -t 12:00:00 -p bigmem,day --batch-file re-run_jobs_66356516.txt_run.sh
dSQ --jobfile re-run_jobs_66356517.txt -J task_17 --mem-per-cpu=96G -t 12:00:00 -p bigmem,day --batch-file re-run_jobs_66356517.txt_run.sh
dSQ --jobfile re-run_jobs_66356519.txt -J task_19 --mem-per-cpu=96G -t 12:00:00 -p bigmem,day --batch-file re-run_jobs_66356519.txt_run.sh

# verification run 
66580168_[0-9807]  bigmem,day, utmost_training_1  zy92   PD       0:00    2:00:00     1     1        32G (None)
66580169_[0-7864]  bigmem,day, utmost_training_2  zy92   PD       0:00    2:00:00     1     1        32G (None)
66580170_[0-8201]  bigmem,day, utmost_training_3  zy92   PD       0:00    2:00:00     1     1        32G (None)

# 
66740222_[0-9807]  bigmem,day, utmost_training_1  zy92   PD       0:00    2:00:00     1     1        32G (None)
66740225_[0-7864]  bigmem,day, utmost_training_2  zy92   PD       0:00    2:00:00     1     1        32G (None)
66740228_[0-8201]  bigmem,day, utmost_training_3  zy92   PD       0:00    2:00:00     1     1        32G (None)

#
66917212_[5-9807]  bigmem,day, utmost_training_1  zy92   PD       0:00    2:00:00     1     1        32G (Resources)
66917332_[0-7864]  bigmem,day, utmost_training_2  zy92   PD       0:00    2:00:00     1     1        32G (None)
66917333_[0-8201]  bigmem,day, utmost_training_3  zy92   PD       0:00    2:00:00     1     1        32G (None)

# 
training 3 67005025
training 2 67039939

training 2 9707
training 1 29062

# create tables
71059_[0-21]       bigmem,day  create_table       zy92   PD       0:00 1-00:00:00     1     1        64G (Resources)


# extracting and filtering the non-coding RNA 
# identify the empty folders
find . -type d -empty -print
# delete those folders 
find . -type d -empty -delete

# transfering the weightdb data
1458753_[0-21]     bigmem,day  format_weight      zy92   PD       0:00 1-00:00:00     1     1        32G (None)

1587727_[0-21]     bigmem,day  format_weight      zy92   PD       0:00 1-00:00:00     1     1        32G (None)

# when building the database table, chromosome 1 - 3, 5 took a long time to run due to the large numbers of genes

estimated time: chr1 1hr50min
# weight files
/gpfs/scratch60/zhao/zy92/GTEX/weight_ENET
/gpfs/scratch60/zhao/zy92/GTEX/weight_BVLS_ENET

# database building 
ut/code/R/build_weight_database.sh
30839884_[0-13]    bigmem,gene database           zy92   PD       0:00   12:00:00     1     1        16G (None)

# extract and transform the non-coding 

# previous version of utmost might have coordinate error (double-check that) based on rsid (it might be OK based on rsid)

# single tissue test brain ENET/BVLS_ENET
30842212_[0-13]    bigmem,gene single_AD_Nerve_Ti zy92   PD       0:00   10:00:00     1     1        64G (Priority)
30842213_[0-13]    bigmem,gene single_AD_Nerve_Ti zy92   PD       0:00   10:00:00     1     1        64G (None)

# single tissue variance calculation based on new database

# BVLS 

# create table
ENET
BVLS_ENET

# still face the problem 

# path is wrong 

# update the weight files 
reformat ENET BVLS
chr1 takes so long 2h 30m

# ENET create table
chr 1 1hr 30m

# BVLS_ENET create table
# database buidling 

# single tissue covariance and joint covariance 
BVLS_ENET single tissue covariance 

# single tissue test 
BVLS_ENET: 2942162
ENET: 2942163

# joint covariance ENET
31766530_0         bigmem      joint_covariance   zy92    R       0:08 2-00:00:00     1     1       512G bigmem02

# retraining the BVLS ENET models on all brain tissues
Submitted batch job 3256044
Submitted batch job 3256045
Submitted batch job 3256046
Submitted batch job 3256047
Submitted batch job 3256048
Submitted batch job 3256049
Submitted batch job 3256050
Submitted batch job 3256051
Submitted batch job 3256052
Submitted batch job 3256053
Submitted batch job 3256053
Submitted batch job 3256054
Submitted batch job 3256055
Submitted batch job 3256056
Submitted batch job 3256057
Submitted batch job 3256058
Submitted batch job 3256059
Submitted batch job 3256060
Submitted batch job 3256061
Submitted batch job 3256062
Submitted batch job 3256063
Submitted batch job 3256064
Submitted batch job 3256090

### ENET
Submitted batch job 33052110
Submitted batch job 33052111
Submitted batch job 33052112
Submitted batch job 33052113
Submitted batch job 33052114
Submitted batch job 33052115
Submitted batch job 33052124
Submitted batch job 33052125
Submitted batch job 33052126
Submitted batch job 33052127
Submitted batch job 33052128
Submitted batch job 33052129
Submitted batch job 33052130
Submitted batch job 33052131
Submitted batch job 33052132
Submitted batch job 33052133
Submitted batch job 33052134
Submitted batch job 33052135
Submitted batch job 33052136
Submitted batch job 33052137
Submitted batch job 33052138
Submitted batch job 33052139


# BVLS 
Rscript bvls_enet_real_brain.R 1 1 /gpfs/loomis/scratch60/zhao/zy92/pruned_loc/ /gpfs/loomis/project/zhao/zy92/GTEX/expr_normalized/ /gpfs/loomis/scratch60/zhao/zy92/output/
args = c("1", "1", "/gpfs/loomis/scratch60/zhao/zy92/pruned_loc/", "/gpfs/loomis/project/zhao/zy92/GTEX/expr_normalized/", "/gpfs/loomis/scratch60/zhao/zy92/output/")

chr_idx <- as.numeric(args[1])
gene_idx <-  as.numeric(args[2])
genotype_dir <- paste0(args[3])
expr_dir <- paste0(args[4])
output_dir <- paste0(args[5])


for i in {1..22}
do
dSQ --jobfile bvls_enet_real_brain_task_${i}.txt  -J bvls_enet_${i} --mem-per-cpu=16G -t 1:00:00 -p bigmem,day --batch-file bvls_enet_real_brain_task_${i}_run.sh
done

for i in {1..22}
do
sbatch bvls_enet_real_brain_task_${i}_run.sh
done

for i in {1..22}
do
dSQ --jobfile enet_real_brain_task_${i}.txt  -J enet_${i} --mem-per-cpu=16G -t 1:00:00 -p bigmem,general --batch-file enet_real_brain_task_${i}_run.sh
done

for i in {1..22}
do
sbatch enet_real_brain_task_${i}_run.sh
done

for i in {1..22}
do
dSQ --jobfile enet_real_brain_task_${i}.txt  -J enet_${i} --mem-per-cpu=16G -t 1:00:00 -p bigmem,day --batch-file enet_real_brain_task_${i}_grace_run.sh
done

for i in {1..22}
do
sbatch enet_real_brain_task_${i}_grace_run.sh
done


##### grace twas bvls

for i in {1..22}
do
dSQ --jobfile bvls_enet_real_brain_task_${i}.txt  -J bvls_enet_${i} --mem-per-cpu=16G -t 1:00:00 -p bigmem,day --batch-file bvls_enet_real_brain_task_${i}_run.sh
done

for i in {1..22}
do
sbatch bvls_enet_real_brain_task_${i}_run.sh
done

##### 

for i in {1..22}
do
dSQ --jobfile enet_real_brain_task_${i}.txt  -J enet_${i} --mem-per-cpu=16G -t 1:00:00 -p bigmem,day --batch-file enet_real_brain_task_${i}_run.sh
done

for i in {1..22}
do
sbatch enet_real_brain_task_${i}_run.sh
done

##### Other tissues

cd /gpfs/loomis/project/zhao/zy92/twas_bvls/code/submit
for i in {1..22}
do
dSQ --jobfile bvls_enet_real_others_task_${i}.txt  -J enet_${i} --mem-per-cpu=16G -t 1:00:00 -p bigmem,day --batch-file bvls_enet_real_others_task_${i}_run.sh
done

for i in {1..22}
do
sbatch bvls_enet_real_others_task_${i}_run.sh
done


#others

##### correlation global 
# mir
cd /gpfs/loomis/project/zhao/zy92/twas_bvls/code/submit
for i in {1..50}
do
dSQ --jobfile global_correlation_mir_task_${i}.txt  -J cor_mir_${i} --mem-per-cpu=24G -t 24:00:00 -p bigmem,day --batch-file global_correlation_mir_task_${i}_run.sh
done

for i in {1..50}
do
sbatch global_correlation_mir_task_${i}_run.sh
done

#####
# lnc
for i in {1..50}
do
dSQ --jobfile global_correlation_lnc_task_${i}.txt  -J cor_lnc_${i} --mem-per-cpu=24G -t 24:00:00 -p bigmem,day --batch-file global_correlation_lnc_task_${i}_run.sh
done

for i in {1..50}
do
sbatch global_correlation_lnc_task_${i}_run.sh
done

### cis location
dSQ --jobfile cis_loc_bychr_mir_task.txt  -J cis_mir --mem-per-cpu=16G -t 4:00:00 -p bigmem,general,pi_zhao --batch-file cis_loc_bychr_mir_task_run.sh
dSQ --jobfile cis_loc_bychr_lnc_task.txt  -J cis_lnc --mem-per-cpu=16G -t 4:00:00 -p bigmem,general,pi_zhao --batch-file cis_loc_bychr_lnc_task_run.sh

### plink file building
# mir 
for i in {1..22}
do
dSQ --jobfile plink_mirna_task_chr${i}.txt  -J mir_chr${i} --mem-per-cpu=8G -t 1:00:00 -p bigmem,day --batch-file plink_mirna_task_chr${i}_run.sh
done

for i in {1..22}
do
sbatch plink_mirna_task_chr${i}_run.sh
done

# lnc
for i in {1..22}
do
dSQ --jobfile plink_lnc_task_chr${i}.txt  -J lnc_chr${i} --mem-per-cpu=8G -t 1:00:00 -p bigmem,day --batch-file plink_lnc_task_chr${i}_run.sh
done

for i in {1..22}
do
sbatch plink_lnc_task_chr${i}_run.sh
done


# pruning 

dSQ --jobfile prune_mirna_task.txt -J  prune_mirna --mem-per-cpu=16G -t 10:00:00 -p bigmem,day --batch-file prune_mirna_task_run.sh

dSQ --jobfile prune_lnc_task.txt -J  prune_lnc --mem-per-cpu=16G -t 10:00:00 -p bigmem,day --batch-file prune_lnc_task_run.sh

# adjustment lnc and mirna

dSQ --jobfile lnc_adjustment_task.txt -J  adjust_lnc --mem-per-cpu=16G -t 12:00:00 -p bigmem,day --batch-file lnc_adjustment_task_run.sh
dSQ --jobfile mirna_adjustment_task.txt -J  adjust_mirna --mem-per-cpu=16G -t 12:00:00 -p bigmem,day --batch-file mirna_adjustment_task_run.sh

# training BVLS
# lnc 
for i in {1..22}
do
dSQ --jobfile bvls_enet_real_lnc_task_${i}.txt  -J bvls_lnc_chr${i} --mem-per-cpu=8G -t 1:00:00 -p bigmem,day --batch-file bvls_enet_real_lnc_task_${i}_run.sh
done

for i in {1..22}
do
sbatch bvls_enet_real_lnc_task_${i}_run.sh
done

# mirna
for i in {1..22}
do
dSQ --jobfile bvls_enet_real_mirna_task_${i}.txt  -J bvls_mirna_chr${i} --mem-per-cpu=8G -t 1:00:00 -p bigmem,day --batch-file bvls_enet_real_mirna_task_${i}_run.sh
done

for i in {1..22}
do
sbatch bvls_enet_real_mirna_task_${i}_run.sh
done

# training ENET
# lnc 
for i in {1..22}
do
dSQ --jobfile enet_real_lnc_task_${i}.txt  -J enet_lnc_chr${i} --mem-per-cpu=8G -t 1:00:00 -p bigmem,day --batch-file enet_real_lnc_task_${i}_run.sh
done

for i in {1..22}
do
sbatch enet_real_lnc_task_${i}_run.sh
done

# mirna
for i in {1..22}
do
dSQ --jobfile enet_real_mirna_task_${i}.txt  -J enet_mirna_chr${i} --mem-per-cpu=8G -t 1:00:00 -p bigmem,day --batch-file enet_real_mirna_task_${i}_run.sh
done

for i in {1..22}
do
sbatch enet_real_mirna_task_${i}_run.sh
done


#### formatting 
# formatting the lnc BVLS ENET models
dSQ --jobfile format_weight_task_lnc_bvls.txt  -J format_weight --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file format_weight_task_lnc_bvls_run.sh

# formatting the lnc ENET models
dSQ --jobfile format_weight_task_lnc_enet.txt  -J format_weight_enet --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file format_weight_task_lnc_enet_run.sh

# formatting the mir BVLS models
dSQ --jobfile format_weight_task_mir_bvls.txt  -J format_weight_mir_bvls --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file format_weight_task_mir_bvls_run.sh

# formatting the mir ENET models
dSQ --jobfile format_weight_task_mir_enet.txt  -J format_weight_mir_enet --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file format_weight_task_mir_enet_run.sh



#### create tables 

# formatting the lnc BVLS ENET models
dSQ --jobfile create_table_task_lnc_bvls.txt  -J create_table_lnc_bvls --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_lnc_bvls_run.sh

# formatting the lnc ENET models
dSQ --jobfile create_table_task_lnc_enet.txt  -J create_table_lnc_enet --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_lnc_enet_run.sh

# formatting the mir BVLS models
dSQ --jobfile create_table_task_mir_bvls.txt  -J create_table_mir_bvls --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_mir_bvls_run.sh

# formatting the mir ENET models
dSQ --jobfile create_table_task_mir_enet.txt  -J create_table_mir_bvls --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_mir_enet_run.sh


#### database building
cd /gpfs/loomis/project/zhao/zy92/twas_bvls/code	
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/output_lnc/tables/BVLS_ENET/
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/output_lnc/tables/ENET/
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/output_mirna/tables/BVLS_ENET/
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/output_mirna/tables/ENET/

#### merge the lnc and mirna

# create table bvls ~ 20 min
dSQ --jobfile create_table_task_nc_bvls.txt  -J create_table_lnc_bvls --mem-per-cpu=8G -t 24:00:00 -p bigmem,day --batch-file create_table_task_nc_bvls_run.sh

# create table enet
dSQ --jobfile create_table_task_nc_enet.txt  -J create_table_nc_enet --mem-per-cpu=8G -t 24:00:00 -p bigmem,day --batch-file create_table_task_nc_enet_run.sh

# database building 
cd /gpfs/loomis/project/zhao/zy92/twas_bvls/code	
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/output_noncoding/tables/BVLS_ENET/
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/output_noncoding/tables/ENET/

# joint covariance 
bash joint_covariance_calculation_v2.sh noncoding_bvls
bash joint_covariance_calculation_v2.sh noncoding_enet

joint_covariance_noncoding_task.txt
dSQ --jobfile joint_covariance_noncoding_task.txt -J joint_cov --mem-per-cpu=512G -t 24:00:00 -p bigmem --batch-file joint_covariance_noncoding_task_run.sh

# single covariance 
dSQ --jobfile single_tissue_nc_bvls_task.txt -J bvls_single_cov --mem-per-cpu=32G -t 24:00:00 -p bigmem,day --batch-file single_tissue_nc_bvls_task_run.sh
dSQ --jobfile single_tissue_nc_enet_task.txt -J enet_single_cov --mem-per-cpu=32G -t 24:00:00 -p bigmem,day --batch-file single_tissue_nc_enet_task_run.sh



# single tissue test

# ADV test on grace 
# 

# build the bvls enet big weight
dSQ --jobfile format_weight_task_all_tissues_bvls.txt  -J format_weight --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file format_weight_task_all_tissues_bvls_run.sh
dSQ --jobfile format_weight_task_all_tissues_enet.txt  -J format_weight --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file format_weight_task_all_tissues_enet_run.sh
dSQ --jobfile format_weight_task_all_tissues_brain.txt  -J format_weight --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file format_weight_task_all_tissues_brain_run.sh

# create table 
dSQ --jobfile create_table_task_all_bvls.txt  -J create_table_bvls --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_all_bvls_run.sh
dSQ --jobfile create_table_task_all_enet.txt  -J create_table_enet --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_all_enet_run.sh
dSQ --jobfile create_table_task_brain_bvls.txt  -J create_table_brain --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_brain_bvls_run.sh


# build database
cd /gpfs/loomis/project/zhao/zy92/twas_bvls/code	
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/output_all_tissues/tables/BVLS_ENET/
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/output_all_tissues/tables/ENET/
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/output_all_tissues/tables/brain/

# merge the database and calculate the single tissue covariance and joint covariance 


vi joint_covariance_all_task.txt

bash /gpfs/loomis/project/zhao/zy92/twas_bvls/code/joint_covariance_calculation_v2.sh all_bvls
bash /gpfs/loomis/project/zhao/zy92/twas_bvls/code/joint_covariance_calculation_v2.sh all_enet

dSQ --jobfile joint_covariance_all_task.txt -J joint_cov --mem-per-cpu=512G -t 24:00:00 -p bigmem --batch-file joint_covariance_all_run.sh

# single covariance 
dSQ --jobfile single_tissue_all_bvls_task.txt -J bvls_single_cov --mem-per-cpu=32G -t 24:00:00 -p bigmem,day --batch-file single_tissue_all_bvls_task_run.sh
dSQ --jobfile single_tissue_all_enet_task.txt -J enet_single_cov --mem-per-cpu=32G -t 24:00:00 -p bigmem,day --batch-file single_tissue_all_enet_task_run.sh


# normalized pruned
dSQ --jobfile single_tissue_all_normalized_pruned.txt -J single_cov --mem-per-cpu=32G -t 24:00:00 -p bigmem,day --batch-file single_tissue_all_normalized_pruned_run.sh

dSQ --jobfile joint_covariance_all_task_normalized_pruned.txt -J joint_cov --mem-per-cpu=512G -t 24:00:00 -p bigmem --batch-file joint_covariance_all_normalized_pruned_run.sh


# dsq 


# R2 filter
dSQ --jobfile R2_summary_task.txt -J r2_summary --mem-per-cpu=32G -t 24:00:00 -p bigmem,day --batch-file R2_summary_task_run.sh


# Ridege 
#### formatting 
# formatting the lnc BVLS ENET models
dSQ --jobfile format_weight_task_lnc_bvls.txt  -J format_weight --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file format_weight_task_lnc_bvls_run.sh

# formatting the lnc ENET models
dSQ --jobfile format_weight_task_lnc_enet.txt  -J format_weight_enet --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file format_weight_task_lnc_enet_run.sh



#### create tables 

# formatting the lnc BVLS ENET models
dSQ --jobfile create_table_task_lnc_bvls.txt  -J create_table_lnc_bvls --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_lnc_bvls_run.sh

# formatting the lnc ENET models
dSQ --jobfile create_table_task_lnc_enet.txt  -J create_table_lnc_enet --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_lnc_enet_run.sh

# formatting the mir BVLS models
dSQ --jobfile create_table_task_mir_bvls.txt  -J create_table_mir_bvls --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_mir_bvls_run.sh

# formatting the mir ENET models
dSQ --jobfile create_table_task_mir_enet.txt  -J create_table_mir_bvls --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_mir_enet_run.sh


#### database building
cd /gpfs/loomis/project/zhao/zy92/twas_bvls/code	
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/output_lnc/tables/BVLS_ENET/
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/output_lnc/tables/ENET/
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/output_mirna/tables/BVLS_ENET/
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/output_mirna/tables/ENET/

#### merge the lnc and mirna

### format the ridge output 
dSQ --jobfile format_weight_task_ridge_all.txt  -J format_weight --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file format_weight_task_ridge_all_run.sh
dSQ --jobfile format_weight_task_bvls_ridge_all.txt  -J format_weight --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file format_weight_task_bvls_ridge_all_run.sh

#### format the ridge output brain
dSQ --jobfile format_weight_task_ridge_brain.txt  -J format_weight --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file format_weight_task_ridge_brain_run.sh
dSQ --jobfile format_weight_task_bvls_ridge_brain.txt  -J format_weight --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file format_weight_task_bvls_ridge_brain_run.sh


#### create tables 

# formatting the lnc BVLS ENET models
dSQ --jobfile create_table_task_bv_ridge_all.txt  -J create_table_bv_all --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_bv_ridge_all_run.sh

# formatting the lnc ENET models
dSQ --jobfile create_table_task_ridge_all.txt  -J create_table_ridge_all --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_ridge_all_run.sh

# formatting the mir BVLS models
dSQ --jobfile create_table_task_bv_ridge_brain.txt  -J create_table_bv_brain --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_bv_ridge_brain_run.sh

# formatting the mir ENET models
dSQ --jobfile create_table_task_ridge_brain.txt  -J create_table_ridge_brain --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_ridge_brain_run.sh


#### database building ridge
cd /gpfs/loomis/project/zhao/zy92/twas_bvls/code	
# bvls ridge
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/results_ridge/tables/all_tissues_pruned/BVLS_RIDGE/
bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/results_ridge/tables/brain_pruned/BVLS_RIDGE/

# ridge
#bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/results_ridge/tables/all_tissues_pruned/RIDGE/
#bash build_weight_database_master.sh /gpfs/loomis/project/zhao/zy92/GTEX/results_ridge/tables/brain_pruned/RIDGE/

#### merge the lnc and mirna

# single tissue covariance

# joint covariance # name of the database
bash joint_covariance_calculation_v2.sh bvls_ridge
dSQ --jobfile joint_covariance_bvls_ridge_task.txt -J joint_cov --mem-per-cpu=512G -t 24:00:00 -p bigmem --batch-file joint_covariance_bvls_ridge_run.sh

#bash joint_covariance_calculation_v2.sh noncoding_enet

# single covariance 
dSQ --jobfile single_tissue_nc_bvls_task.txt -J bvls_single_cov --mem-per-cpu=32G -t 24:00:00 -p bigmem,day --batch-file single_tissue_nc_bvls_task_run.sh
dSQ --jobfile single_tissue_nc_enet_task.txt -J enet_single_cov --mem-per-cpu=32G -t 24:00:00 -p bigmem,day --batch-file single_tissue_nc_enet_task_run.sh


# new real data bvls 
cd /gpfs/loomis/project/zhao/zy92/twas_bvls/code/submit
for i in {1..22}
do
dSQ --jobfile bvls_enet_real_others_task_${i}.txt  -J enet_${i} --mem-per-cpu=8G -t 1:00:00 -p bigmem,general,scavenge --batch-file bvls_enet_real_others_task_${i}_run.sh
done

for i in {1..22}
do
sbatch bvls_enet_real_others_task_${i}_run.sh
done

# single tissue test

# R2 summary 
dSQ --jobfile R2_summary_bvls_enet_task.txt -J enet_r2_summary --mem-per-cpu=32G -t 24:00:00 -p bigmem,day --batch-file R2_summary_bvls_enet_run.sh
dSQ --jobfile R2_summary_bvls_ridge_task.txt -J ridge_r2_summary --mem-per-cpu=32G -t 24:00:00 -p bigmem,day --batch-file R2_summary_bvls_ridge_run.sh
dSQ --jobfile R2_summary_enet_task.txt -J enetp_r2_summary --mem-per-cpu=5G -t 24:00:00 -p bigmem,day --batch-file R2_summary_enet_run.sh

dSQ --jobfile R2_summary_bvls_enet_brain_task.txt -J enet_brain_r2_summary --mem-per-cpu=5G -t 24:00:00 -p bigmem,day --batch-file R2_summary_bvls_enet_brain_run.sh

R2_summary_bvls_enet_brain_task.txt

R2_summary_enet_task.txt

# non coding RNA ridge models
# new real data bvls farnam
# lnc
cd /gpfs/loomis/project/zhao/zy92/twas_bvls/code/submit
for i in {1..22}
do
dSQ --jobfile bvls_ridge_real_lnc_task_${i}.txt  -J ridge_${i} --mem-per-cpu=8G -t 4:00:00 -p bigmem,day --batch-file bvls_ridge_real_lnc_task_${i}_run.sh
done

for i in {1..22}
do
sbatch bvls_ridge_real_lnc_task_${i}_run.sh
done

# mir
# new real data bvls grace
cd /gpfs/loomis/project/zhao/zy92/twas_bvls/code/submit
for i in {1..22}
do
dSQ --jobfile bvls_ridge_real_mirna_task_${i}.txt  -J ridge_${i} --mem-per-cpu=8G -t 4:00:00 -p bigmem,day --batch-file bvls_ridge_real_mirna_task_${i}_run.sh
done

for i in {1..22}
do
sbatch bvls_ridge_real_mirna_task_${i}_run.sh
done

# bvls simulation 
dSQ --jobfile simulation_bvls_enet.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_bvls_enet_run.sh

dSQ --jobfile simulation_bvls_enet_he0.4_cp0.05.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_bvls_enet_he0.4_cp0.05_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.05.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_bvls_enet_he0.2_cp0.05_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.05.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_bvls_enet_he0.1_cp0.05_run.sh

dSQ --jobfile simulation_bvls_enet_he0.4_cp0.1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_bvls_enet_he0.4_cp0.1_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_bvls_enet_he0.2_cp0.1_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_bvls_enet_he0.1_cp0.1_run.sh


#rerun
dsqa -j 9230530 -f simulation_bvls_enet.txt > re-run_jobs_9230530.txt 2> 9230530_report.txt
dSQ --jobfile simulation_bvls_enet_rerun.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_bvls_enet_rerun_run.sh

# ridge simulation 
dSQ --jobfile simulation_ridge_he0.4_cp0.05.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.4_cp0.05_run.sh
dSQ --jobfile simulation_ridge_he0.2_cp0.05.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.2_cp0.05_run.sh
dSQ --jobfile simulation_ridge_he0.1_cp0.05.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.1_cp0.05_run.sh

dSQ --jobfile simulation_ridge_he0.4_cp0.1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.4_cp0.1_run.sh
dSQ --jobfile simulation_ridge_he0.2_cp0.1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.2_cp0.1_run.sh
dSQ --jobfile simulation_ridge_he0.1_cp0.1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.1_cp0.1_run.sh

# twas pipeline 
/gpfs/loomis/project/zhao/zy92/utmost/pipeline
/home/zy92/project/twas_bvls/code/submit/pipeline
/gpfs/loomis/project/zhao/zy92/utmost_update/utmost_update/code/submit/pipeline
/gpfs/loomis/project/zhao/zy92/twas_bvls/code/submit/pipeline/step1.sh
/home/zy92/jupyter_v2/grace_project/twas_bvls/code/submit/pipeline/step1.sh
grace_project/twas_bvls/code/submit/pipeline/step1.sh


# test single tissue test
covariance_GTEx8_normalized_pruned

python2 /ysm-gpfs/pi/zhao-data/zy92/test_utmost_git/UTMOST//single_tissue_association_test.py --model_db_path /ysm-gpfs/pi/zhao-data/zy92/test_utmost_git/UTMOST/sample_data/database_all_bvls/Testis.db --covariance /ysm-gpfs/pi/zhao-data/zy92/test_utmost_git/UTMOST/sample_data/covariance_all_bvls/Testis.txt.gz --gwas_folder /ysm-gpfs/pi/zhao-data/zy92/GWAS_data/ --gwas_file_pattern adv_adno_assoc.assoc.clean.txt --snp_column SNP --effect_allele_column A2 --non_effect_allele_column A1 --beta_column BETA --pvalue_column P --output_file /ysm-gpfs/pi/zhao-data/zy92/update_utmost/ADV_ADNO_all_bvls/single/test_Testis.csv

# simulation 
# enet lasso 
dSQ --jobfile simulation_lasso_enet_he0.4_cp0.05.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.4_cp0.05_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.05.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.2_cp0.05_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.05.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.1_cp0.05_run.sh

dSQ --jobfile simulation_lasso_enet_he0.4_cp0.1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.4_cp0.1_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.2_cp0.1_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.1_cp0.1_run.sh

sbatch simulation_lasso_enet_he0.1_cp0.05_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.05_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.05_run.sh
sbatch simulation_lasso_enet_he0.1_cp0.1_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.1_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.1_run.sh

# test on other gwas summary statistics



# v2 simulation 

# bvls enet 
dSQ --jobfile simulation_bvls_enet_he0.4_cp0.05_v2.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.4_cp0.05_v2_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.05_v2.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.2_cp0.05_v2_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.05_v2.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.1_cp0.05_v2_run.sh

dSQ --jobfile simulation_bvls_enet_he0.4_cp0.1_v2.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.4_cp0.1_v2_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.1_v2.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.2_cp0.1_v2_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.1_v2.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.1_cp0.1_v2_run.sh


# ridge 
dSQ --jobfile simulation_ridge_he0.4_cp0.05_v2.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.4_cp0.05_v2_run.sh
dSQ --jobfile simulation_ridge_he0.2_cp0.05_v2.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.2_cp0.05_v2_run.sh
dSQ --jobfile simulation_ridge_he0.1_cp0.05_v2.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.1_cp0.05_v2_run.sh

dSQ --jobfile simulation_ridge_he0.4_cp0.1_v2.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.4_cp0.1_v2_run.sh
dSQ --jobfile simulation_ridge_he0.2_cp0.1_v2.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.2_cp0.1_v2_run.sh
dSQ --jobfile simulation_ridge_he0.1_cp0.1_v2.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.1_cp0.1_v2_run.sh

sbatch simulation_ridge_he0.1_cp0.05_v2_run.sh
sbatch simulation_ridge_he0.2_cp0.05_v2_run.sh
sbatch simulation_ridge_he0.4_cp0.05_v2_run.sh
sbatch simulation_ridge_he0.1_cp0.1_v2_run.sh
sbatch simulation_ridge_he0.2_cp0.1_v2_run.sh
sbatch simulation_ridge_he0.4_cp0.1_v2_run.sh

# enet lasso 
dSQ --jobfile simulation_lasso_enet_he0.4_cp0.05_v2.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_lasso_enet_he0.4_cp0.05_v2_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.05_v2.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_lasso_enet_he0.2_cp0.05_v2_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.05_v2.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_lasso_enet_he0.1_cp0.05_v2_run.sh

dSQ --jobfile simulation_lasso_enet_he0.4_cp0.1_v2.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_lasso_enet_he0.4_cp0.1_v2_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.1_v2.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_lasso_enet_he0.2_cp0.1_v2_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.1_v2.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_lasso_enet_he0.1_cp0.1_v2_run.sh

sbatch simulation_lasso_enet_he0.1_cp0.05_v2_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.05_v2_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.05_v2_run.sh
sbatch simulation_lasso_enet_he0.1_cp0.1_v2_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.1_v2_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.1_v2_run.sh


# version three

# bvls enet 
dSQ --jobfile simulation_bvls_enet_he0.4_cp0.05_v3.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.4_cp0.05_v3_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.05_v3.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.2_cp0.05_v3_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.05_v3.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.1_cp0.05_v3_run.sh

dSQ --jobfile simulation_bvls_enet_he0.4_cp0.1_v3.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.4_cp0.1_v3_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.1_v3.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.2_cp0.1_v3_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.1_v3.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.1_cp0.1_v3_run.sh

sbatch simulation_bvls_enet_he0.1_cp0.05_v3_run.sh
sbatch simulation_bvls_enet_he0.2_cp0.05_v3_run.sh
sbatch simulation_bvls_enet_he0.4_cp0.05_v3_run.sh
sbatch simulation_bvls_enet_he0.1_cp0.1_v3_run.sh
sbatch simulation_bvls_enet_he0.2_cp0.1_v3_run.sh
sbatch simulation_bvls_enet_he0.4_cp0.1_v3_run.sh

# ridge 
dSQ --jobfile simulation_ridge_he0.4_cp0.05_v3.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.4_cp0.05_v3_run.sh
dSQ --jobfile simulation_ridge_he0.2_cp0.05_v3.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.2_cp0.05_v3_run.sh
dSQ --jobfile simulation_ridge_he0.1_cp0.05_v3.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.1_cp0.05_v3_run.sh

dSQ --jobfile simulation_ridge_he0.4_cp0.1_v3.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.4_cp0.1_v3_run.sh
dSQ --jobfile simulation_ridge_he0.2_cp0.1_v3.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.2_cp0.1_v3_run.sh
dSQ --jobfile simulation_ridge_he0.1_cp0.1_v3.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.1_cp0.1_v3_run.sh

sbatch simulation_ridge_he0.1_cp0.05_v3_run.sh
sbatch simulation_ridge_he0.2_cp0.05_v3_run.sh
sbatch simulation_ridge_he0.4_cp0.05_v3_run.sh
sbatch simulation_ridge_he0.1_cp0.1_v3_run.sh
sbatch simulation_ridge_he0.2_cp0.1_v3_run.sh
sbatch simulation_ridge_he0.4_cp0.1_v3_run.sh

# enet lasso 
dSQ --jobfile simulation_lasso_enet_he0.4_cp0.05_v3.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.4_cp0.05_v3_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.05_v3.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.2_cp0.05_v3_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.05_v3.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.1_cp0.05_v3_run.sh

dSQ --jobfile simulation_lasso_enet_he0.4_cp0.1_v3.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.4_cp0.1_v3_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.1_v3.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.2_cp0.1_v3_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.1_v3.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.1_cp0.1_v3_run.sh

sbatch simulation_lasso_enet_he0.1_cp0.05_v3_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.05_v3_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.05_v3_run.sh
sbatch simulation_lasso_enet_he0.1_cp0.1_v3_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.1_v3_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.1_v3_run.sh

## new version of simulation 

# enet lasso 
dSQ --jobfile simulation_lasso_enet_he0.4_cp0.05_v1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_lasso_enet_he0.4_cp0.05_v1_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.05_v1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_lasso_enet_he0.2_cp0.05_v1_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.05_v1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_lasso_enet_he0.1_cp0.05_v1_run.sh

dSQ --jobfile simulation_lasso_enet_he0.4_cp0.1_v1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_lasso_enet_he0.4_cp0.1_v1_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.1_v1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_lasso_enet_he0.2_cp0.1_v1_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.1_v1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_lasso_enet_he0.1_cp0.1_v1_run.sh

sbatch simulation_lasso_enet_he0.1_cp0.05_v1_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.05_v1_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.05_v1_run.sh
sbatch simulation_lasso_enet_he0.1_cp0.1_v1_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.1_v1_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.1_v1_run.sh

# bvls enet 
dSQ --jobfile simulation_bvls_enet_he0.4_cp0.05_v1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.4_cp0.05_v1_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.05_v1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.2_cp0.05_v1_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.05_v1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.1_cp0.05_v1_run.sh

dSQ --jobfile simulation_bvls_enet_he0.4_cp0.1_v1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.4_cp0.1_v1_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.1_v1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.2_cp0.1_v1_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.1_v1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.1_cp0.1_v1_run.sh

sbatch simulation_bvls_enet_he0.1_cp0.05_v1_run.sh
sbatch simulation_bvls_enet_he0.2_cp0.05_v1_run.sh
sbatch simulation_bvls_enet_he0.4_cp0.05_v1_run.sh
sbatch simulation_bvls_enet_he0.1_cp0.1_v1_run.sh
sbatch simulation_bvls_enet_he0.2_cp0.1_v1_run.sh
sbatch simulation_bvls_enet_he0.4_cp0.1_v1_run.sh

# ridge 
dSQ --jobfile simulation_ridge_he0.4_cp0.05_v1.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.4_cp0.05_v1_run.sh
dSQ --jobfile simulation_ridge_he0.2_cp0.05_v1.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.2_cp0.05_v1_run.sh
dSQ --jobfile simulation_ridge_he0.1_cp0.05_v1.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.1_cp0.05_v1_run.sh

dSQ --jobfile simulation_ridge_he0.4_cp0.1_v1.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.4_cp0.1_v1_run.sh
dSQ --jobfile simulation_ridge_he0.2_cp0.1_v1.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.2_cp0.1_v1_run.sh
dSQ --jobfile simulation_ridge_he0.1_cp0.1_v1.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.1_cp0.1_v1_run.sh

sbatch simulation_ridge_he0.1_cp0.05_v1_run.sh
sbatch simulation_ridge_he0.2_cp0.05_v1_run.sh
sbatch simulation_ridge_he0.4_cp0.05_v1_run.sh
sbatch simulation_ridge_he0.1_cp0.1_v1_run.sh
sbatch simulation_ridge_he0.2_cp0.1_v1_run.sh
sbatch simulation_ridge_he0.4_cp0.1_v1_run.sh


# v2 


# grace lasso 

dSQ --jobfile simulation_lasso_enet_he0.4_cp0.05_v2.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_lasso_enet_he0.4_cp0.05_v2_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.05_v2.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_lasso_enet_he0.2_cp0.05_v2_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.05_v2.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_lasso_enet_he0.1_cp0.05_v2_run.sh

dSQ --jobfile simulation_lasso_enet_he0.4_cp0.1_v2.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_lasso_enet_he0.4_cp0.1_v2_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.1_v2.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_lasso_enet_he0.2_cp0.1_v2_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.1_v2.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_lasso_enet_he0.1_cp0.1_v2_run.sh

sbatch simulation_lasso_enet_he0.1_cp0.05_v2_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.05_v2_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.05_v2_run.sh
sbatch simulation_lasso_enet_he0.1_cp0.1_v2_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.1_v2_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.1_v2_run.sh

# farnam bvls
dSQ --jobfile simulation_bvls_enet_he0.4_cp0.05_v2.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.4_cp0.05_v2_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.05_v2.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.2_cp0.05_v2_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.05_v2.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.1_cp0.05_v2_run.sh

dSQ --jobfile simulation_bvls_enet_he0.4_cp0.1_v2.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.4_cp0.1_v2_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.1_v2.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.2_cp0.1_v2_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.1_v2.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.1_cp0.1_v2_run.sh

sbatch simulation_bvls_enet_he0.1_cp0.05_v2_run.sh
sbatch simulation_bvls_enet_he0.2_cp0.05_v2_run.sh
sbatch simulation_bvls_enet_he0.4_cp0.05_v2_run.sh
sbatch simulation_bvls_enet_he0.1_cp0.1_v2_run.sh
sbatch simulation_bvls_enet_he0.2_cp0.1_v2_run.sh
sbatch simulation_bvls_enet_he0.4_cp0.1_v2_run.sh


# grace ridge
sbatch simulation_ridge_he0.1_cp0.05_v2_run.sh
sbatch simulation_ridge_he0.2_cp0.05_v2_run.sh
sbatch simulation_ridge_he0.4_cp0.05_v2_run.sh
sbatch simulation_ridge_he0.1_cp0.1_v2_run.sh
sbatch simulation_ridge_he0.2_cp0.1_v2_run.sh
sbatch simulation_ridge_he0.4_cp0.1_v2_run.sh

# v3

# enet lasso 
dSQ --jobfile simulation_lasso_enet_he0.4_cp0.05_v3.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.4_cp0.05_v3_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.05_v3.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.2_cp0.05_v3_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.05_v3.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.1_cp0.05_v3_run.sh

dSQ --jobfile simulation_lasso_enet_he0.4_cp0.1_v3.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.4_cp0.1_v3_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.1_v3.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.2_cp0.1_v3_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.1_v3.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.1_cp0.1_v3_run.sh

sbatch simulation_lasso_enet_he0.1_cp0.05_v3_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.05_v3_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.05_v3_run.sh
sbatch simulation_lasso_enet_he0.1_cp0.1_v3_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.1_v3_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.1_v3_run.sh

# bvls enet farnam
dSQ --jobfile simulation_bvls_enet_he0.4_cp0.05_v3.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.4_cp0.05_v3_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.05_v3.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.2_cp0.05_v3_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.05_v3.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.1_cp0.05_v3_run.sh

dSQ --jobfile simulation_bvls_enet_he0.4_cp0.1_v3.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.4_cp0.1_v3_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.1_v3.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.2_cp0.1_v3_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.1_v3.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.1_cp0.1_v3_run.sh

sbatch simulation_bvls_enet_he0.1_cp0.05_v3_run.sh
sbatch simulation_bvls_enet_he0.2_cp0.05_v3_run.sh
sbatch simulation_bvls_enet_he0.4_cp0.05_v3_run.sh
sbatch simulation_bvls_enet_he0.1_cp0.1_v3_run.sh
sbatch simulation_bvls_enet_he0.2_cp0.1_v3_run.sh
sbatch simulation_bvls_enet_he0.4_cp0.1_v3_run.sh

# ridge grace
dSQ --jobfile simulation_ridge_he0.4_cp0.05_v3.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.4_cp0.05_v3_run.sh
dSQ --jobfile simulation_ridge_he0.2_cp0.05_v3.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.2_cp0.05_v3_run.sh
dSQ --jobfile simulation_ridge_he0.1_cp0.05_v3.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.1_cp0.05_v3_run.sh

dSQ --jobfile simulation_ridge_he0.4_cp0.1_v3.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.4_cp0.1_v3_run.sh
dSQ --jobfile simulation_ridge_he0.2_cp0.1_v3.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.2_cp0.1_v3_run.sh
dSQ --jobfile simulation_ridge_he0.1_cp0.1_v3.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.1_cp0.1_v3_run.sh

sbatch simulation_ridge_he0.1_cp0.05_v3_run.sh
sbatch simulation_ridge_he0.2_cp0.05_v3_run.sh
sbatch simulation_ridge_he0.4_cp0.05_v3_run.sh
sbatch simulation_ridge_he0.1_cp0.1_v3_run.sh
sbatch simulation_ridge_he0.2_cp0.1_v3_run.sh
sbatch simulation_ridge_he0.4_cp0.1_v3_run.sh


# weighted bvls v1
# enet lasso 
dSQ --jobfile simulation_lasso_enet_he0.4_cp0.05_v1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.4_cp0.05_v1_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.05_v1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.2_cp0.05_v1_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.05_v1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.1_cp0.05_v1_run.sh

dSQ --jobfile simulation_lasso_enet_he0.4_cp0.1_v1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.4_cp0.1_v1_run.sh
dSQ --jobfile simulation_lasso_enet_he0.2_cp0.1_v1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.2_cp0.1_v1_run.sh
dSQ --jobfile simulation_lasso_enet_he0.1_cp0.1_v1.txt  -J simu_lasso --mem-per-cpu=8G -t 12:00:00 -p bigmem,day,scavenge --batch-file simulation_lasso_enet_he0.1_cp0.1_v1_run.sh

sbatch simulation_lasso_enet_he0.1_cp0.05_v1_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.05_v1_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.05_v1_run.sh
sbatch simulation_lasso_enet_he0.1_cp0.1_v1_run.sh
sbatch simulation_lasso_enet_he0.2_cp0.1_v1_run.sh
sbatch simulation_lasso_enet_he0.4_cp0.1_v1_run.sh

# bvls enet farnam
dSQ --jobfile simulation_bvls_enet_he0.4_cp0.05_v1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.4_cp0.05_v1_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.05_v1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.2_cp0.05_v1_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.05_v1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.1_cp0.05_v1_run.sh

dSQ --jobfile simulation_bvls_enet_he0.4_cp0.1_v1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.4_cp0.1_v1_run.sh
dSQ --jobfile simulation_bvls_enet_he0.2_cp0.1_v1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.2_cp0.1_v1_run.sh
dSQ --jobfile simulation_bvls_enet_he0.1_cp0.1_v1.txt  -J simu_bvls --mem-per-cpu=8G -t 12:00:00 -p bigmem,general,pi_zhao,scavenge --batch-file simulation_bvls_enet_he0.1_cp0.1_v1_run.sh

sbatch simulation_bvls_enet_he0.1_cp0.05_v1_run.sh
sbatch simulation_bvls_enet_he0.2_cp0.05_v1_run.sh
sbatch simulation_bvls_enet_he0.4_cp0.05_v1_run.sh
sbatch simulation_bvls_enet_he0.1_cp0.1_v1_run.sh
sbatch simulation_bvls_enet_he0.2_cp0.1_v1_run.sh
sbatch simulation_bvls_enet_he0.4_cp0.1_v1_run.sh

# ridge grace
dSQ --jobfile simulation_ridge_he0.4_cp0.05_v1.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.4_cp0.05_v1_run.sh
dSQ --jobfile simulation_ridge_he0.2_cp0.05_v1.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.2_cp0.05_v1_run.sh
dSQ --jobfile simulation_ridge_he0.1_cp0.05_v1.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.1_cp0.05_v1_run.sh

dSQ --jobfile simulation_ridge_he0.4_cp0.1_v1.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.4_cp0.1_v1_run.sh
dSQ --jobfile simulation_ridge_he0.2_cp0.1_v1.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.2_cp0.1_v1_run.sh
dSQ --jobfile simulation_ridge_he0.1_cp0.1_v1.txt  -J simu_ridge --mem-per-cpu=8G -t 12:00:00 -p bigmem,day --batch-file simulation_ridge_he0.1_cp0.1_v1_run.sh

sbatch simulation_ridge_he0.1_cp0.05_v1_run.sh
sbatch simulation_ridge_he0.2_cp0.05_v1_run.sh
sbatch simulation_ridge_he0.4_cp0.05_v1_run.sh
sbatch simulation_ridge_he0.1_cp0.1_v1_run.sh
sbatch simulation_ridge_he0.2_cp0.1_v1_run.sh
sbatch simulation_ridge_he0.4_cp0.1_v1_run.sh

# check the file  

# v2 results
754
he2_0.1_causalp_0.05_ss_500
736
he2_0.1_causalp_0.1_ss_500
755
he2_0.2_causalp_0.05_ss_500
741
he2_0.2_causalp_0.1_ss_500
756
he2_0.4_causalp_0.05_ss_500
744
he2_0.4_causalp_0.1_ss_500


# dsq

dSQ --jobfile summary_R2_plot.txt -J R2_summary_plot --mem-per-cpu=32G -t 12:00:00 -p bigmem,day --batch-file summary_R2_plot_run.sh


# real data 

submit_wbvls_ridge_real_10000.sh

# summarize the results real data based on the RData

# ridge 
/home/zy92/project/GTEX/results_ridge/pruned

# delete the empty files
find . -type f -empty -delete

for i in `ls`; do find $i -type f -empty -delete; done 

# model for non-coding genes 


cp -r adjusted_expr_pc /ysm-gpfs/pi/zhao-data/zy92/GTEx_V8/processed_data

/home/zy92/scratch60/GTEx_V8

# example 

#!/bin/bash
#SBATCH --output cp_exp_pc.out
#SBATCH --array 0-2000
#SBATCH --job-name bvls_enet_7
#SBATCH --mem-per-cpu=16G -t 1:00:00 -p bigmem,day

# DO NOT EDIT LINE BELOW
/gpfs/loomis/apps/avx/software/dSQ/1.05/dSQBatch.py --job-file /gpfs/loomis/project/zhao/zy92/twas_bvls/code/submit/bvls_enet_real_brain_task_7.txt --status-dir /gpfs/loomis/project/zhao/zy92/twas_bvls/code/submit
cp -r cd /gpfs/loomis/scratch60/zhao/zy92/GTEx_V8/adjusted_expr_pc /ysm-gpfs/pi/zhao-data/zy92/GTEx_V8/processed_data


# temp save 

# LNC 

par_list <- c(1, 10, 100, 1000)
for (par in par_list ) {

    y_dir = "/gpfs/loomis/project/zhao/zy92/GTEX/adjusted_lnc_expr/chr"
    gene_list = list()
    for (i in 1:22) {
        tmp_dir = paste0(y_dir, i)
        gene_list[[i]] = list.files(tmp_dir)
    }

    for (i in 1:22) {
        task_str <- paste0("ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R ",  
        i, " ", 1:length(gene_list[[i]]) , 
        " /gpfs/loomis/project/zhao/zy92/GTEX/genotype/cis_loc_lnc_pruned/ /gpfs/loomis/project/zhao/zy92/GTEX/adjusted_lnc_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output_lnc/ ",
        par)

        # task file 
        file_name <- paste0("./submit/wbvls_lnc_ridge_real_", par, "_", i, ".txt")
        fileConn <- file(file_name)
        writeLines(task_str, fileConn)
        close(fileConn)

    }

     # dsq
    task_list <- paste0("dSQ --jobfile ", 
                        "wbvls_lnc_ridge_real_", par, "_", 1:22, ".txt",  
                        " -J wbvls_lnc --mem-per-cpu=8G -t 2:00:00 -p bigmem,day,scavenge --batch-file ", 
                        "wbvls_lnc_ridge_real_", par, "_", 1:22, "_run.sh")



    # task file 
    file_name <- paste0("./submit/dsq_wbvls_lnc_ridge_real_", par, ".sh")
    fileConn <- file(file_name)
    writeLines(task_list, fileConn)
    close(fileConn)

    # submit the dsq file

    run_list <- paste0("sbatch ", 
                        "wbvls_lnc_ridge_real_",  par, "_", 1:22, "_run.sh")

    fileConn <- file(paste0("./submit/submit_wbvls_lnc_ridge_real_", par, ".sh"))
    writeLines(run_list, fileConn)
    close(fileConn)
}


# temp save 

# mirna

par_list <- c(1, 10, 100, 1000)
for (par in par_list ) {

    y_dir = "/gpfs/loomis/project/zhao/zy92/GTEX/adjusted_mirna_expr/chr"
    gene_list = list()
    for (i in 1:22) {
        tmp_dir = paste0(y_dir, i)
        gene_list[[i]] = list.files(tmp_dir)
    }

    for (i in 1:22) {
        task_str <- paste0("ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R ",  
        i, " ", 1:length(gene_list[[i]]) , 
        " /gpfs/loomis/project/zhao/zy92/GTEX/genotype/cis_loc_mirna_pruned/ /gpfs/loomis/project/zhao/zy92/GTEX/adjusted_mirna_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output_mirna/ ",
        par)

        # task file 
        file_name <- paste0("./submit/wbvls_mirna_ridge_real_", par, "_", i, ".txt")
        fileConn <- file(file_name)
        writeLines(task_str, fileConn)
        close(fileConn)

    }

     # dsq
    task_list <- paste0("dSQ --jobfile ", 
                        "wbvls_mirna_ridge_real_", par, "_", 1:22, ".txt",  
                        " -J wbvls_mirna --mem-per-cpu=8G -t 2:00:00 -p bigmem,day,scavenge --batch-file ", 
                        "wbvls_mirna_ridge_real_", par, "_", 1:22, "_run.sh")



    # task file 
    file_name <- paste0("./submit/dsq_wbvls_mirna_ridge_real_", par, ".sh")
    fileConn <- file(file_name)
    writeLines(task_list, fileConn)
    close(fileConn)

    # submit the dsq file

    run_list <- paste0("sbatch ", 
                        "wbvls_mirna_ridge_real_",  par, "_", 1:22, "_run.sh")

    fileConn <- file(paste0("./submit/submit_wbvls_mirna_ridge_real_", par, ".sh"))
    writeLines(run_list, fileConn)
    close(fileConn)
}

# summary R2 Farnam 
Submitted batch job 54378444

# summary R2 LNC
54462101

# problematic cases 
weighted_bvls_ridge_gene1298_100.RData chr1
weighted_bvls_ridge_gene410_10.RData chr19

ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R 1 1298 /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/ /gpfs/ysm/pi/zhao-data/zy92/GTEx_V8/processed_data/adjusted_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output/ 100
ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R 19 410 /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/ /gpfs/ysm/pi/zhao-data/zy92/GTEx_V8/processed_data/adjusted_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output/ 10
remaining_task.txt
dSQ --jobfile remaining_task.txt -J remaining --mem-per-cpu=16G -t 10:00:00 -p bigmem,day --batch-file remaining_task_run.sh

wbvls_general_summary_real_subset.txt
dSQ --jobfile wbvls_general_summary_real_subset.txt -J summary --mem-per-cpu=125G -t 10:00:00 -p bigmem,day --batch-file wbvls_general_summary_real_subset_run.sh

ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R 1 1338 /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/ /gpfs/ysm/pi/zhao-data/zy92/GTEx_V8/processed_data/adjusted_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output/ 100

ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R 1 1298 /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/ /gpfs/ysm/pi/zhao-data/zy92/GTEx_V8/processed_data/adjusted_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output/ 100
ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R 19 410 /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/ /gpfs/ysm/pi/zhao-data/zy92/GTEx_V8/processed_data/adjusted_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output/ 10

ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R 1 1338 /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/ /gpfs/ysm/pi/zhao-data/zy92/GTEx_V8/processed_data/adjusted_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output/ 100
ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R 1 1362 /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/ /gpfs/ysm/pi/zhao-data/zy92/GTEx_V8/processed_data/adjusted_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output/ 100
ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R 1 1415 /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/ /gpfs/ysm/pi/zhao-data/zy92/GTEx_V8/processed_data/adjusted_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output/ 100
ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R 1 1431 /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/ /gpfs/ysm/pi/zhao-data/zy92/GTEx_V8/processed_data/adjusted_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output/ 100
ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R 1 1723 /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/ /gpfs/ysm/pi/zhao-data/zy92/GTEx_V8/processed_data/adjusted_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output/ 100
ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R 1 1756 /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/ /gpfs/ysm/pi/zhao-data/zy92/GTEx_V8/processed_data/adjusted_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output/ 100

#chr 19 very strange 
input_dir = "/ysm-gpfs/pi/zhao-data/zy92/bvls_twas_results/wbvls_output/pruned/chr1/"
file_vec = list.files(input_dir, pattern = "*1000.RData")
error_vec = c()
print(paste0("INFO: length ", length(file_vec)))
for (i in 1:length(file_vec)) {
#for (i in 1:5) {
    
        print(paste0("INFO: ", i, " ", file_vec[i]))
    
    #tryCatch({
    ln <- load(paste0(input_dir, file_vec[i]))
    rm(list = ln)
    
}

# format the weights 

debugging: 
dsq-wbvls_ridge_real_10_1-13868414_0117-bigmem03.out


# checking results
for i in `ls`; 
do  
echo $i
ls $i | grep 1.RData | wc -l
ls $i | grep 10.RData | wc -l
ls $i | grep 100.RData | wc -l
ls $i | grep 1000.RData | wc -l
done; 

# par 10 chr 20, 21, 22

sbatch wbvls_ridge_real_10_20_run.sh
sbatch wbvls_ridge_real_10_21_run.sh
sbatch wbvls_ridge_real_10_22_run.sh


# SRA toolkit
module load SRA-Toolkit/2.10.8-centos_linux64

prefetch

ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R 2 33 /gpfs/loomis/project/zhao/zy92/GTEX/genotype/cis_loc_mirna_pruned/ /gpfs/loomis/project/zhao/zy92/GTEX/adjusted_mirna_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output_mirna/ 100
ulimit -c 0; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_ridge_real.R 2 33 /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/ /gpfs/ysm/pi/zhao-data/zy92/GTEx_V8/processed_data/adjusted_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_output/ 100


# 16249236
16254266 rerun 

cp -r beta1 /home/zy92/scratch60/wbvls_weights/
cp -r beta10 /home/zy92/scratch60/wbvls_weights/;
cp -r beta100 /home/zy92/scratch60/wbvls_weights/;
cp -r beta1000 /home/zy92/scratch60/wbvls_weights/;


# format a weight folder 
it usually takes about 2 hrs
but for chr1 and chr2 more than 2.5 hrs
chr1 3 hrs 

# create table for building the database 
3 hrs 

# use that to build the database
task name: 56186117 over 8(max) hr per tissue (Farnam)
task name: 16455583 over 5 hr per tissue (Grace)

# change the /gpfs/loomis/project/zhao/zy92/twas_bvls/code/submit/build_database_run.sh as original 
dSQ --jobfile build_database_subset_task.txt -J database_building --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file build_database_subset_task_run.sh
cd /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_table/merged/
sbatch /gpfs/loomis/project/zhao/zy92/twas_bvls/code/submit/build_database_subset_task_run.sh


# database zhao project 
/home/zy92/project/UTMOST_test_1107/UTMOST/sample_data/

# single tissue covariance 
16470413

python2 ./single_tissue_covariance.py \
--weight_db sample_data/database_wbvls/Whole_Blood.db \
--input_folder sample_data/dosage/ \
--covariance_output sample_data/covariance_wbvls/Whole_Blood.txt.gz

# build database

dSQ --jobfile build_database_task.txt -J database_building --mem-per-cpu=8G -t 48:00:00 -p bigmem,week --batch-file build_database_task_run.sh
sbatch /home/zy92/project/twas_bvls/code/submit/build_database_task_run.sh

dSQ --jobfile build_database_task.txt -J database_building --mem-per-cpu=8G -t 48:00:00 -p week --batch-file build_database_task_run.sh
sbatch /home/zy92/project/twas_bvls/code/submit/build_database_task_run.sh
# single tissue cov 
16515638 32G 
16515699 64G
16515789 64G
16515988 64G

# single tissue test 

/home/zy92/scratch60/UTMOST/sample_data
cd /gpfs/loomis/project/zhao/zy92/twas_bvls/code/submit/pipeline
bash WenC_step1_updated_wbvls.sh
bash Cisplatin_step1_updated_all_wbvls.sh
bash ADV_step1_updated_all_wbvls.sh

bash WenC_step1_updated_wbvlsf.sh
bash Cisplatin_step1_updated_all_wbvlsf.sh
bash ADV_step1_updated_all_wbvlsf.sh

# these files have been changed to "only target Whole blood tissue"
 


# RNA seq 

module load STAR/2.6.0c-foss-2018a


# mapping 
STAR \
--runThreadN 8 --genomeDir /home/zy92/scratch60/RNA_seq/star/genome/ \
--sjdbGTFfile /home/zy92/scratch60/RNA_seq/star/Homo_sapiens.GRCh38.79.gtf \
--readFilesIn  \
/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_2.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601541_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601542_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601543_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601544_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601545_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601546_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601547_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601548_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601549_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601550_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601551_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601552_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601553_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601554_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601555_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601556_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601557_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601558_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601559_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601560_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601561_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601562_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601563_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601564_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601565_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601566_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601567_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601568_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601569_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601570_1.fastq \
--twopassMode Basic

# joint covariance 
joint_covariance_wbvls_task.txt
dSQ --jobfile joint_covariance_wbvls_task.txt -J joint_cov --mem-per-cpu=360G -t 48:00:00 -p bigmem --batch-file joint_covariance_wbvls_task_run.sh
sbatch joint_covariance_wbvls_task_run.sh

Array Job ID: 56497426_0
Cluster: farnam
User/Group: zy92/zhao
State: COMPLETED (exit code 0)
Cores: 1
CPU Utilized: 03:58:58
CPU Efficiency: 98.17% of 04:03:26 core-walltime
Job Wall-clock time: 04:03:26
Memory Utilized: 436.29 GB
Memory Efficiency: 85.21% of 512.00 GB

# mapping reads and generating BAM files
STAR \
--runThreadN 8 --genomeDir /home/zy92/scratch60/RNA_seq/star/genome/ \
--sjdbGTFfile /home/zy92/scratch60/RNA_seq/star/Homo_sapiens.GRCh38.79.gtf \
--readFilesIn \
/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_2.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601541_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601542_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601543_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601544_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601545_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601546_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601547_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601548_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601549_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601550_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601551_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601552_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601553_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601554_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601555_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601556_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601557_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601558_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601559_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601560_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601561_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601562_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601563_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601564_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601565_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601566_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601567_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601568_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601569_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601570_1.fastq \
--outSAMtype BAM SortedByCoordinate Unsorted

# limited memory version
STAR \
--runThreadN 8 --genomeDir /home/zy92/scratch60/RNA_seq/star/genome/ \
--sjdbGTFfile /home/zy92/scratch60/RNA_seq/star/Homo_sapiens.GRCh38.79.gtf \
--readFilesIn \
/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_2.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601541_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601542_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601543_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601544_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601545_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601546_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601547_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601548_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601549_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601550_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601551_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601552_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601553_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601554_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601555_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601556_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601557_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601558_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601559_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601560_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601561_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601562_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601563_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601564_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601565_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601566_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601567_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601568_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601569_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601570_1.fastq \
--outSAMtype BAM SortedByCoordinate Unsorted \
--limitBAMsortRAM 32157822963

# quantify the RSEM
STAR \
--runThreadN 8 --genomeDir /home/zy92/scratch60/RNA_seq/star/genome/ \
--sjdbGTFfile /home/zy92/scratch60/RNA_seq/star/Homo_sapiens.GRCh38.79.gtf \
--readFilesIn \
/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_2.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601541_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601542_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601543_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601544_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601545_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601546_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601547_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601548_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601549_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601550_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601551_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601552_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601553_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601554_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601555_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601556_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601557_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601558_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601559_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601560_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601561_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601562_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601563_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601564_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601565_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601566_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601567_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601568_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601569_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601570_1.fastq \
--quantMode TranscriptomeSAM

# RSEM reference 
/home/zy92/scratch60/RNA_seq/student_tools/RSEM/bin/rsem-prepare-reference \
--gtf /home/zy92/scratch60/RNA_seq/star/Homo_sapiens.GRCh38.79.gtf \
/home/zy92/scratch60/RNA_seq/star/genome/Homo_sapiens.GRCh38.dna.primary_assembly.fa ./ref

# quantify the expession levels

/home/zy92/scratch60/RNA_seq/student_tools/RSEM/bin/rsem-calculate-expression --bam --no-bam-output -p 8  \
/home/zy92/scratch60/RNA_seq/star/nash_rsem/Aligned.toTranscriptome.out.bam /home/zy92/scratch60/RNA_seq/star/nash_rsem/ref /home/zy92/scratch60/RNA_seq/star/nash_rsem/Quant \
>& /home/zy92/scratch60/RNA_seq/star/nash_rsem/rsem_quant.log

# joint association test 
/gpfs/loomis/project/zhao/zy92/twas_bvls/code/submit/pipeline/WenC_step3_updated_normalized_pruned.sh
./grace_project/twas_bvls/code/submit/pipeline/WenC_step3_updated_normalized_pruned.sh

# RNA seq pipeline should process the data individually

# mapping reads and generating BAM files
STAR \
--runThreadN 8 --genomeDir /home/zy92/scratch60/RNA_seq/star/genome/ \
--sjdbGTFfile /home/zy92/scratch60/RNA_seq/star/Homo_sapiens.GRCh38.79.gtf \
--readFilesIn \
/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_2.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601541_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601542_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601543_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601544_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601545_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601546_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601547_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601548_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601549_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601550_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601551_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601552_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601553_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601554_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601555_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601556_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601557_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601558_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601559_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601560_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601561_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601562_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601563_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601564_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601565_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601566_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601567_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601568_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601569_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601570_1.fastq \
--outSAMtype BAM SortedByCoordinate Unsorted

# limited memory version
STAR \
--runThreadN 8 --genomeDir /home/zy92/scratch60/RNA_seq/star/genome/ \
--sjdbGTFfile /home/zy92/scratch60/RNA_seq/star/Homo_sapiens.GRCh38.79.gtf \
--readFilesIn \
/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_2.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601541_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601542_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601543_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601544_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601545_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601546_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601547_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601548_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601549_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601550_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601551_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601552_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601553_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601554_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601555_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601556_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601557_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601558_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601559_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601560_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601561_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601562_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601563_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601564_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601565_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601566_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601567_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601568_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601569_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601570_1.fastq \
--outSAMtype BAM SortedByCoordinate Unsorted \
--limitBAMsortRAM 32157822963

# quantify the RSEM
STAR \
--runThreadN 8 --genomeDir /home/zy92/scratch60/RNA_seq/star/genome/ \
--sjdbGTFfile /home/zy92/scratch60/RNA_seq/star/Homo_sapiens.GRCh38.79.gtf \
--readFilesIn \
/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR4444990_2.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601541_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601542_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601543_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601544_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601545_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601546_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601547_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601548_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601549_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601550_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601551_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601552_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601553_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601554_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601555_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601556_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601557_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601558_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601559_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601560_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601561_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601562_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601563_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601564_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601565_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601566_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601567_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601568_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601569_1.fastq,/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/SRR8601570_1.fastq \
--quantMode TranscriptomeSAM

# RSEM reference 
/home/zy92/scratch60/RNA_seq/student_tools/RSEM/bin/rsem-prepare-reference \
--gtf /home/zy92/scratch60/RNA_seq/star/Homo_sapiens.GRCh38.79.gtf \
/home/zy92/scratch60/RNA_seq/star/genome/Homo_sapiens.GRCh38.dna.primary_assembly.fa ./ref

# quantify the expession levels

/home/zy92/scratch60/RNA_seq/student_tools/RSEM/bin/rsem-calculate-expression --bam --no-bam-output -p 8  \
/home/zy92/scratch60/RNA_seq/star/nash_rsem/Aligned.toTranscriptome.out.bam /home/zy92/scratch60/RNA_seq/star/nash_rsem/ref /home/zy92/scratch60/RNA_seq/star/nash_rsem/Quant \
>& /home/zy92/scratch60/RNA_seq/star/nash_rsem/rsem_quant.log

for i in $(ls raw_data); do STAR --genomeDir index.150 \
--readFilesIn raw_data/$i\_1.fq.gz,raw_data/$i\_2.fq.gz \
--runThreadN 20 --outFileNamePrefix aligned/$i. \
--outSAMtype BAM SortedByCoordinate \
--quantMode GeneCounts \
--sjdbGTFfile GRCm38.90.gtf \
--readFilesCommand zcat ; done

/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/ 




# for loop file 

index=$1
RAW_DIR=/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/ 
PREFIX_TOTAL=(SRR4444990_1 SRR4444990_2 SRR8601541_1 SRR8601542_1 SRR8601543_1 SRR8601544_1 SRR8601545_1 SRR8601546_1 SRR8601547_1 SRR8601548_1 SRR8601549_1 SRR8601550_1 SRR8601551_1 SRR8601552_1 SRR8601553_1 SRR8601554_1 SRR8601555_1 SRR8601556_1 SRR8601557_1 SRR8601558_1 SRR8601559_1 SRR8601560_1 SRR8601561_1 SRR8601562_1 SRR8601563_1 SRR8601564_1 SRR8601565_1 SRR8601566_1 SRR8601567_1 SRR8601568_1 SRR8601569_1 SRR8601570_1)

for prefix in ${PREFIX_TOTAL[$index]}
do

# grace_project/nash/RNA_seq_pipeline.sh

# collect RNA seq results
rsem-generate-data-matrix sampleA.[genes/isoforms].results sampleB.[genes/isoforms].results ... > output_name.counts.matrix

/home/zy92/scratch60/RNA_seq/student_tools/RSEM/bin/rsem-generate-data-matrix \
SRR8601541_1.Quant.isoforms.results SRR8601542_1.Quant.isoforms.results SRR8601543_1.Quant.isoforms.results SRR8601544_1.Quant.isoforms.results SRR8601545_1.Quant.isoforms.results SRR8601546_1.Quant.isoforms.results SRR8601547_1.Quant.isoforms.results SRR8601548_1.Quant.isoforms.results SRR8601549_1.Quant.isoforms.results SRR8601550_1.Quant.isoforms.results SRR8601551_1.Quant.isoforms.results SRR8601552_1.Quant.isoforms.results SRR8601553_1.Quant.isoforms.results SRR8601554_1.Quant.isoforms.results SRR8601555_1.Quant.isoforms.results SRR8601556_1.Quant.isoforms.results SRR8601557_1.Quant.isoforms.results SRR8601558_1.Quant.isoforms.results SRR8601559_1.Quant.isoforms.results SRR8601560_1.Quant.isoforms.results SRR8601561_1.Quant.isoforms.results SRR8601562_1.Quant.isoforms.results SRR8601563_1.Quant.isoforms.results SRR8601564_1.Quant.isoforms.results SRR8601565_1.Quant.isoforms.results SRR8601566_1.Quant.isoforms.results SRR8601567_1.Quant.isoforms.results SRR8601568_1.Quant.isoforms.results SRR8601569_1.Quant.isoforms.results SRR8601570_1.Quant.isoforms.results \
> isoforms.counts.matrix

# single tissue test 
16817716_48        bigmem      single_ADV_Whole_B zy92    R   22:16:57 1-00:00:00     1     1       256G p08r06n34
16817715_48        bigmem      single_Cisplatin_W zy92    R   23:17:05 1-00:00:00     1     1       256G bigmem03
16817715_45        bigmem      single_Cisplatin_W zy92    R   23:19:48 1-00:00:00     1     1       256G bigmem03

57262538_[0-48]    pi_zhao,big single_ADV_Whole_B zy92   PD       0:00 2-00:00:00     1     1       160G (QOSMaxJobsPerUserLimit)
57262535_[2-48]    pi_zhao,big single_Cisplatin_W zy92   PD       0:00 2-00:00:00     1     1       160G (QOSMaxJobsPerUserLimit)
57262534_[25-48]   pi_zhao,big single_Allopurinol zy92   PD       0:00 2-00:00:00     1     1       1


# Spearman correlation test 
# compress the joint cov
61324559_[0-3]     pi_zhao,big compress_cov       zy92   PD       0:00 1-00:00:00     1     1
61427518

# grace jupyter servers 
18426889 jupyterlab
18427054 jupyter

# new RNA seq 

# for loop file 

index=$1
RAW_DIR=/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/nash/GSE135251/ 
PREFIX_TOTAL=(SRR4444990_1 SRR4444990_2 SRR8601541_1 SRR8601542_1 SRR8601543_1 SRR8601544_1 SRR8601545_1 SRR8601546_1 SRR8601547_1 SRR8601548_1 SRR8601549_1 SRR8601550_1 SRR8601551_1 SRR8601552_1 SRR8601553_1 SRR8601554_1 SRR8601555_1 SRR8601556_1 SRR8601557_1 SRR8601558_1 SRR8601559_1 SRR8601560_1 SRR8601561_1 SRR8601562_1 SRR8601563_1 SRR8601564_1 SRR8601565_1 SRR8601566_1 SRR8601567_1 SRR8601568_1 SRR8601569_1 SRR8601570_1)

for prefix in ${PREFIX_TOTAL[$index]}
do

# grace_project/nash/RNA_seq_pipeline.sh

# collect RNA seq results
rsem-generate-data-matrix sampleA.[genes/isoforms].results sampleB.[genes/isoforms].results ... > output_name.counts.matrix

/home/zy92/scratch60/RNA_seq/student_tools/RSEM/bin/rsem-generate-data-matrix \
SRR8601541_1.Quant.isoforms.results SRR8601542_1.Quant.isoforms.results SRR8601543_1.Quant.isoforms.results SRR8601544_1.Quant.isoforms.results SRR8601545_1.Quant.isoforms.results SRR8601546_1.Quant.isoforms.results SRR8601547_1.Quant.isoforms.results SRR8601548_1.Quant.isoforms.results SRR8601549_1.Quant.isoforms.results SRR8601550_1.Quant.isoforms.results SRR8601551_1.Quant.isoforms.results SRR8601552_1.Quant.isoforms.results SRR8601553_1.Quant.isoforms.results SRR8601554_1.Quant.isoforms.results SRR8601555_1.Quant.isoforms.results SRR8601556_1.Quant.isoforms.results SRR8601557_1.Quant.isoforms.results SRR8601558_1.Quant.isoforms.results SRR8601559_1.Quant.isoforms.results SRR8601560_1.Quant.isoforms.results SRR8601561_1.Quant.isoforms.results SRR8601562_1.Quant.isoforms.results SRR8601563_1.Quant.isoforms.results SRR8601564_1.Quant.isoforms.results SRR8601565_1.Quant.isoforms.results SRR8601566_1.Quant.isoforms.results SRR8601567_1.Quant.isoforms.results SRR8601568_1.Quant.isoforms.results SRR8601569_1.Quant.isoforms.results SRR8601570_1.Quant.isoforms.results \
> isoforms.counts.matrix

source /gpfs/loomis/home.grace/zy92/R/R_env.sh; module load R/3.6.1-foss-2018b-X11-20180604; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/simulation_utmost_v1.R 1 /gpfs/ysm/pi/zhao-data/yh587/chr21/  /gpfs/loomis/project/zhao/zy92/GTEX/simulation_results/v1/  0.1 0.05 500
source /gpfs/loomis/home.grace/zy92/R/R_env.sh; /gpfs/loomis/home.grace/zy92/R_farnam/bin/Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/simulation_utmost_v1.R 1 /gpfs/ysm/pi/zhao-data/yh587/chr21/  /gpfs/loomis/project/zhao/zy92/GTEX/simulation_results/v1/  0.1 0.05 500
source /gpfs/loomis/home.grace/zy92/R/R_env.sh; module load R/3.6.1-foss-2018b-X11-20180604; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/simulation_utmost_v1.R 1 /gpfs/ysm/pi/zhao-data/yh587/chr21/  /gpfs/loomis/project/zhao/zy92/GTEX/simulation_results/v1/  0.1 0.05 500

source /gpfs/loomis/home.grace/zy92/R/R_env.sh; /gpfs/loomis/home.grace/zy92/R_farnam/bin/Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/simulation_utmost_v1.R 2 /gpfs/ysm/pi/zhao-data/yh587/chr21/  /gpfs/loomis/project/zhao/zy92/GTEX/simulation_results/v1/  0.1 0.05 500
cd /gpfs/loomis/home.grace/zy92/R_farnam/bin/; ./Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/simulation_utmost_v1.R 1 /gpfs/ysm/pi/zhao-data/yh587/chr21/  /gpfs/loomis/project/zhao/zy92/GTEX/simulation_results/v1/  0.1 0.05 500


R/3.5.3-foss-2018a-X11-20180131

# UTMOST simulation 
# v1 
bash weighted_utmost_simulation_v1.sh
Submitted batch job 19987154
Submitted batch job 19987155
Submitted batch job 19987156
Submitted batch job 19987157
Submitted batch job 19987158
Submitted batch job 19987159

bash weighted_utmost_simulation_v1.sh
Submitted batch job 19997935
Submitted batch job 19997936
Submitted batch job 19997937
Submitted batch job 19997938
Submitted batch job 19997986
Submitted batch job 19997987

bash weighted_utmost_simulation_v1.sh
Submitted batch job 20001387
Submitted batch job 20001388
Submitted batch job 20001389
Submitted batch job 20001390
Submitted batch job 20001391
Submitted batch job 20001392


# v2 
source /gpfs/loomis/home.grace/zy92/R/R_env.sh; module load R/3.6.1-foss-2018b-X11-20180604; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/simulation_utmost_v2.R 1 /gpfs/ysm/pi/zhao-data/yh587/chr21/  /gpfs/loomis/project/zhao/zy92/GTEX/simulation_results/v2/  0.1 0.1 500

bash weighted_utmost_simulation_v2.sh
Submitted batch job 19989805
Submitted batch job 19989806
Submitted batch job 19989807
Submitted batch job 19989808
Submitted batch job 19989809
Submitted batch job 19989810

bash weighted_utmost_simulation_v2.sh
Submitted batch job 19997991
Submitted batch job 19997992
Submitted batch job 19997993
Submitted batch job 19997994
Submitted batch job 19997995
Submitted batch job 19997996

bash weighted_utmost_simulation_v2.sh
Submitted batch job 20001374
Submitted batch job 20001375
Submitted batch job 20001376
Submitted batch job 20001377
Submitted batch job 20001378
Submitted batch job 20001386


# v3
source /gpfs/loomis/home.grace/zy92/R/R_env.sh; module load R/3.6.1-foss-2018b-X11-20180604; Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/simulation_utmost_v3.R 1 /gpfs/ysm/pi/zhao-data/yh587/chr21/  /gpfs/loomis/project/zhao/zy92/GTEX/simulation_results/v3/  0.1 0.1 500


bash weighted_utmost_simulation_v3.sh
Submitted batch job 19999682
Submitted batch job 19999683
Submitted batch job 19999684
Submitted batch job 19999685
Submitted batch job 19999686
Submitted batch job 19999687

bash weighted_utmost_simulation_v3.sh
Submitted batch job 20001322
Submitted batch job 20001323
Submitted batch job 20001324
Submitted batch job 20001325
Submitted batch job 20001326
Submitted batch job 20001327


# pearson without sample size 
bash dsq_wbvls_ridge_pearson_real_1.sh
bash dsq_wbvls_ridge_pearson_real_10.sh
bash dsq_wbvls_ridge_pearson_real_100.sh
bash dsq_wbvls_ridge_pearson_real_1000.sh

bash submit_wbvls_ridge_pearson_real_1.sh
bash submit_wbvls_ridge_pearson_real_10.sh
bash submit_wbvls_ridge_pearson_real_100.sh
bash submit_wbvls_ridge_pearson_real_1000.sh

# rerun 
from 20015697
to 20017679

summary 20209866
sbatch wbvls_un_pearson_summary_real_subset_v1_run.sh
Submitted batch job 20220397
week Submitted batch job 20222170

# par = 1000 group 

bash submit_wbvls_ridge_pearson_real_1000.sh
Submitted batch job 20229694
to 
Submitted batch job 20229715


(base) -bash-4.2$ bash weighted_utmost_simulation_v1.sh
Submitted batch job 20986503
Submitted batch job 20986504
Submitted batch job 20986505
Submitted batch job 20986506
Submitted batch job 20986507
Submitted batch job 20986508
(base) -bash-4.2$ bash weighted_utmost_simulation_v2.sh
Submitted batch job 20986509
Submitted batch job 20986510
Submitted batch job 20986511
Submitted batch job 20986512
Submitted batch job 20986513
Submitted batch job 20986514
(base) -bash-4.2$ bash weighted_utmost_simulation_v3.sh
Submitted batch job 20986515
Submitted batch job 20986516
Submitted batch job 20986517
Submitted batch job 20986518
Submitted batch job 20986519
Submitted batch job 20986520


bash weighted_utmost_simulation_v1.sh
Submitted batch job 21463768
Submitted batch job 21463769
Submitted batch job 21463770
Submitted batch job 21463771
Submitted batch job 21463772
Submitted batch job 21463773
(base) -bash-4.2$ bash weighted_utmost_simulation_v2.sh
Submitted batch job 21463774
Submitted batch job 21463775
Submitted batch job 21463776
Submitted batch job 21463777
Submitted batch job 21463778
Submitted batch job 21463779
(base) -bash-4.2$ bash weighted_utmost_simulation_v3.sh
Submitted batch job 21463780
Submitted batch job 21463781
Submitted batch job 21463782
Submitted batch job 21463783
Submitted batch job 21463784
Submitted batch job 21463785

bash weighted_utmost_simulation_v1.sh
Submitted batch job 21618777
Submitted batch job 21618778
Submitted batch job 21618779
Submitted batch job 21618780
Submitted batch job 21618781
Submitted batch job 21618782
(base) -bash-4.2$ bash weighted_utmost_simulation_v2.sh
Submitted batch job 21618783
Submitted batch job 21618784
Submitted batch job 21618785
Submitted batch job 21618786
Submitted batch job 21618787
Submitted batch job 21618788
(base) -bash-4.2$ bash weighted_utmost_simulation_v3.sh
Submitted batch job 21618789
Submitted batch job 21618790
Submitted batch job 21618791
Submitted batch job 21618792
Submitted batch job 21618793
Submitted batch job 21618794

# removing dsq files

rm dsq-wbvls_ridge_pearson_real_1_1*
rm dsq-wbvls_ridge_pearson_real_1_2*
rm dsq-wbvls_ridge_pearson_real_1_*

rm dsq-wbvls_ridge_pearson_real_10_1*
rm dsq-wbvls_ridge_pearson_real_10_2*
rm dsq-wbvls_ridge_pearson_real_10_*

rm dsq-wbvls_ridge_pearson_real_100_1*
rm dsq-wbvls_ridge_pearson_real_100_2*
rm dsq-wbvls_ridge_pearson_real_100_*

rm dsq-wbvls_ridge_pearson_real_1000_1*
rm dsq-wbvls_ridge_pearson_real_1000_2*
rm dsq-wbvls_ridge_pearson_real_1000_*

rm dsq-wbvls_ridge_pearson_real_1000_

# enet

bash dsq_wbvls_enet_pearson_real_1.sh
bash dsq_wbvls_enet_pearson_real_10.sh
bash dsq_wbvls_enet_pearson_real_100.sh
bash dsq_wbvls_enet_pearson_real_1000.sh

bash submit_wbvls_ridge_pearson_real_1.sh
bash submit_wbvls_ridge_pearson_real_10.sh
bash submit_wbvls_ridge_pearson_real_100.sh
bash submit_wbvls_ridge_pearson_real_1000.sh



# enet training 

bash dsq_wbvls_enet_pearson_real.sh
bash submit_wbvls_enet_pearson_real.sh

Submitted batch job 22188181
Submitted batch job 22188182
Submitted batch job 22188183
Submitted batch job 22188184
Submitted batch job 22188185

bash weighted_bvls_simulation_v3.sh
Submitted batch job 22555614
Submitted batch job 22555615
Submitted batch job 22555616
Submitted batch job 22555617
Submitted batch job 22555618
Submitted batch job 22555619
Submitted batch job 22555620
Submitted batch job 22555621
Submitted batch job 22555622
Submitted batch job 22555623
Submitted batch job 22555624
Submitted batch job 22555625
Submitted batch job 22555626
Submitted batch job 22555627
Submitted batch job 22555628
Submitted batch job 22555629
Submitted batch job 22555630
Submitted batch job 22555631
Submitted batch job 22555632
Submitted batch job 22555633
Submitted batch job 22555634
Submitted batch job 22555635
Submitted batch job 22555636
Submitted batch job 22555637

# testing real bvls enet 
Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/weighted_bvls_enet_real_gene.R 1 1 /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/ /gpfs/ysm/pi/zhao-data/zy92/GTEx_V8/processed_data/adjusted_expr/ /gpfs/ysm/pi/zhao-data/zy92/bvls_twas_results/wbvls_enet_output/ 3

# testing simulation jti
dSQ --jobfile simulation_jti_he0.2_cp0.05_v1.txt  -J simu_jti --mem-per-cpu=20G -t 24:00:00 -p bigmem,day,scavenge --batch-file simulation_jti_he0.2_cp0.05_v1_run.sh
simulation_jti_he0.2_cp0.05_v3.txt
Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/simulation_jti_v3.R 3 /gpfs/ysm/pi/zhao-data/yh587/chr21/  /home/zy92/scratch60/bvls_simulation/v3/  0.2 0.05 500
Rscript /gpfs/loomis/project/zhao/zy92/twas_bvls/code/simulation_jti_v3_test.R 4 /gpfs/ysm/pi/zhao-data/yh587/chr21/  /home/zy92/scratch60/bvls_simulation/v3/  0.2 0.05 500

# simulation jti 
bash weighted_jti_simulation_v1.sh
Submitted batch job 22855584
Submitted batch job 22855585
Submitted batch job 22855586
Submitted batch job 22855587
Submitted batch job 22855588
Submitted batch job 22855589
(base) -bash-4.2$ bash weighted_jti_simulation_v2.sh
Submitted batch job 22855590
Submitted batch job 22855591
Submitted batch job 22855592
Submitted batch job 22855593
Submitted batch job 22855594
Submitted batch job 22855595
(base) -bash-4.2$ bash weighted_jti_simulation_v3.sh
Submitted batch job 22855596
Submitted batch job 22855597
Submitted batch job 22855598
Submitted batch job 22855599
Submitted batch job 22855600
Submitted batch job 22855601

# un spearman 

bash dsq_wbvls_ridge_spearman_real_1.sh
bash dsq_wbvls_ridge_spearman_real_10.sh
bash dsq_wbvls_ridge_spearman_real_100.sh
bash dsq_wbvls_ridge_spearman_real_1000.sh

bash submit_wbvls_ridge_spearman_real_1.sh
bash submit_wbvls_ridge_spearman_real_10.sh
bash submit_wbvls_ridge_spearman_real_100.sh
bash submit_wbvls_ridge_spearman_real_1000.sh

# un pearson simulation rerun with BVLS ENET
bash dsq_weighted_bvls_simulation_v1.sh
bash dsq_weighted_bvls_simulation_v2.sh
bash dsq_weighted_bvls_simulation_v3.sh

bash weighted_bvls_simulation_v1.sh
bash weighted_bvls_simulation_v2.sh
bash weighted_bvls_simulation_v3.sh

# new simulation 
(base) -bash-4.2$ bash weighted_bvls_simulation_v1.sh
Submitted batch job 23265223
Submitted batch job 23265224
Submitted batch job 23265225
Submitted batch job 23265226
Submitted batch job 23265227
Submitted batch job 23265228
Submitted batch job 23265229
Submitted batch job 23265230
Submitted batch job 23265231
Submitted batch job 23265232
Submitted batch job 23265233
Submitted batch job 23265234
Submitted batch job 23265235
Submitted batch job 23265236
Submitted batch job 23265237
Submitted batch job 23265238
Submitted batch job 23265239
Submitted batch job 23265240
Submitted batch job 23265241
Submitted batch job 23265242
Submitted batch job 23265243
Submitted batch job 23265244
Submitted batch job 23265245
Submitted batch job 23265246
(base) -bash-4.2$ bash weighted_bvls_simulation_v2.sh
Submitted batch job 23265247
Submitted batch job 23265248
Submitted batch job 23265249
Submitted batch job 23265250
Submitted batch job 23265251
Submitted batch job 23265252
Submitted batch job 23265253
Submitted batch job 23265254
Submitted batch job 23265255
Submitted batch job 23265256
Submitted batch job 23265257
Submitted batch job 23265258
Submitted batch job 23265259
Submitted batch job 23265262
Submitted batch job 23265263
Submitted batch job 23265264
Submitted batch job 23265265
Submitted batch job 23265266
Submitted batch job 23265267
Submitted batch job 23265268
Submitted batch job 23265269
Submitted batch job 23265270
Submitted batch job 23265271
Submitted batch job 23265272
(base) -bash-4.2$ bash weighted_bvls_simulation_v3.sh
Submitted batch job 23265273
Submitted batch job 23265274
Submitted batch job 23265275
Submitted batch job 23265276
Submitted batch job 23265277
Submitted batch job 23265278
Submitted batch job 23265279
Submitted batch job 23265280
Submitted batch job 23265281
Submitted batch job 23265282
Submitted batch job 23265283
Submitted batch job 23265284
Submitted batch job 23265285
Submitted batch job 23265286
Submitted batch job 23265287
Submitted batch job 23265288
Submitted batch job 23265289
Submitted batch job 23265290
Submitted batch job 23265291
Submitted batch job 23265292
Submitted batch job 23265293
Submitted batch job 23265294
Submitted batch job 23265295
Submitted batch job 23265296

# collect bvls_enet results 
sbatch wbvls_enet_pearson_summary_real_run.sh
Submitted batch job 23325710


# RNA seq 
module load STAR/2.7.0f-foss-2018b
cd /gpfs/loomis/scratch60/zhao/zy92/RNA_seq/star/genome
STAR \--runThreadN 12 --runMode genomeGenerate --genomeDir ./ \--genomeFastaFiles ./Homo_sapiens.GRCh38.dna.primary_assembly.fa


dsq-RNA_seq_mapping_task_GSE135251-19110431_212-bigmem04

dsqa --job-id 19110431 --job-file RNA_seq_mapping_task_GSE135251.txt --states OUT_OF_MEMORY > 19110431_rerun.txt 2> 19110431_report.txt

dSQ --jobfile 19110431_rerun.txt -J rerun_rnaseq --mem-per-cpu=64G -t 12:00:00 -p bigmem,day --batch-file 19110431_rerun_run.sh

dsqa --job-id 23937415 --job-file RNA_seq_mapping_task_GSE135251_RSEM.txt --states OUT_OF_MEMORY > 23937415_rerun.txt 2> 23937415_report.txt

dSQ --jobfile 23937415_rerun.txt -J rerun_rnaseq --mem-per-cpu=64G -t 12:00:00 -p bigmem,day --batch-file 23937415_rerun_run.sh




PREFIX=SRR9882966
WORKING_DIR=/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/star/GSE135251/
/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/student_tools/RSEM/bin/rsem-calculate-expression --bam --no-bam-output -p 4  --paired-end --forward-prob 0  \
$WORKING_DIR/RSEM/${PREFIX}Aligned.toTranscriptome.out.bam /gpfs/loomis/scratch60/zhao/zy92/RNA_seq/star/nash_rsem/ref $WORKING_DIR/RSEM/$PREFIX.Quant \
>& /$WORKING_DIR/RSEM/$PREFIX.rsem_quant_test.log
done 
echo "Complete!"


/gpfs/loomis/scratch60/zhao/zy92/RNA_seq/student_tools/RSEM/bin/rsem-generate-data-matrix SRR9882956.Quant.isoforms.results SRR9882957.Quant.isoforms.results SRR9882958.Quant.isoforms.results SRR9882959.Quant.isoforms.results SRR9882960.Quant.isoforms.results SRR9882961.Quant.isoforms.results SRR9882963.Quant.isoforms.results SRR9882964.Quant.isoforms.results SRR9882965.Quant.isoforms.results SRR9882966.Quant.isoforms.results SRR9882967.Quant.isoforms.results SRR9882968.Quant.isoforms.results SRR9882969.Quant.isoforms.results SRR9882970.Quant.isoforms.results SRR9882971.Quant.isoforms.results SRR9882973.Quant.isoforms.results SRR9882974.Quant.isoforms.results SRR9882975.Quant.isoforms.results SRR9882976.Quant.isoforms.results SRR9882977.Quant.isoforms.results SRR9882979.Quant.isoforms.results SRR9882980.Quant.isoforms.results SRR9882981.Quant.isoforms.results SRR9882982.Quant.isoforms.results SRR9882983.Quant.isoforms.results SRR9882984.Quant.isoforms.results SRR9882985.Quant.isoforms.results SRR9882986.Quant.isoforms.results SRR9882987.Quant.isoforms.results SRR9882988.Quant.isoforms.results SRR9882989.Quant.isoforms.results SRR9882990.Quant.isoforms.results SRR9882991.Quant.isoforms.results SRR9882992.Quant.isoforms.results SRR9882993.Quant.isoforms.results SRR9882994.Quant.isoforms.results SRR9882995.Quant.isoforms.results SRR9882996.Quant.isoforms.results SRR9882997.Quant.isoforms.results SRR9882998.Quant.isoforms.results SRR9882999.Quant.isoforms.results SRR9883000.Quant.isoforms.results SRR9883001.Quant.isoforms.results SRR9883002.Quant.isoforms.results SRR9883003.Quant.isoforms.results SRR9883004.Quant.isoforms.results SRR9883005.Quant.isoforms.results SRR9883006.Quant.isoforms.results SRR9883007.Quant.isoforms.results SRR9883008.Quant.isoforms.results SRR9883009.Quant.isoforms.results SRR9883010.Quant.isoforms.results SRR9883011.Quant.isoforms.results SRR9883012.Quant.isoforms.results SRR9883013.Quant.isoforms.results SRR9883014.Quant.isoforms.results SRR9883015.Quant.isoforms.results SRR9883016.Quant.isoforms.results SRR9883017.Quant.isoforms.results SRR9883018.Quant.isoforms.results SRR9883019.Quant.isoforms.results SRR9883020.Quant.isoforms.results SRR9883021.Quant.isoforms.results SRR9883022.Quant.isoforms.results SRR9883023.Quant.isoforms.results SRR9883024.Quant.isoforms.results SRR9883025.Quant.isoforms.results SRR9883026.Quant.isoforms.results SRR9883027.Quant.isoforms.results SRR9883028.Quant.isoforms.results SRR9883029.Quant.isoforms.results SRR9883030.Quant.isoforms.results SRR9883031.Quant.isoforms.results SRR9883032.Quant.isoforms.results SRR9883033.Quant.isoforms.results SRR9883034.Quant.isoforms.results SRR9883035.Quant.isoforms.results SRR9883036.Quant.isoforms.results SRR9883037.Quant.isoforms.results SRR9883038.Quant.isoforms.results SRR9883039.Quant.isoforms.results SRR9883040.Quant.isoforms.results SRR9883041.Quant.isoforms.results SRR9883042.Quant.isoforms.results SRR9883043.Quant.isoforms.results SRR9883044.Quant.isoforms.results SRR9883045.Quant.isoforms.results SRR9883046.Quant.isoforms.results SRR9883047.Quant.isoforms.results SRR9883048.Quant.isoforms.results SRR9883049.Quant.isoforms.results SRR9883050.Quant.isoforms.results SRR9883051.Quant.isoforms.results SRR9883052.Quant.isoforms.results SRR9883053.Quant.isoforms.results SRR9883054.Quant.isoforms.results SRR9883055.Quant.isoforms.results SRR9883056.Quant.isoforms.results SRR9883057.Quant.isoforms.results SRR9883058.Quant.isoforms.results SRR9883059.Quant.isoforms.results SRR9883060.Quant.isoforms.results SRR9883061.Quant.isoforms.results SRR9883062.Quant.isoforms.results SRR9883063.Quant.isoforms.results SRR9883064.Quant.isoforms.results SRR9883065.Quant.isoforms.results SRR9883066.Quant.isoforms.results SRR9883067.Quant.isoforms.results SRR9883068.Quant.isoforms.results SRR9883069.Quant.isoforms.results SRR9883070.Quant.isoforms.results SRR9883071.Quant.isoforms.results SRR9883072.Quant.isoforms.results SRR9883073.Quant.isoforms.results SRR9883074.Quant.isoforms.results SRR9883075.Quant.isoforms.results SRR9883076.Quant.isoforms.results SRR9883077.Quant.isoforms.results SRR9883078.Quant.isoforms.results SRR9883079.Quant.isoforms.results SRR9883080.Quant.isoforms.results SRR9883081.Quant.isoforms.results SRR9883082.Quant.isoforms.results SRR9883084.Quant.isoforms.results SRR9883092.Quant.isoforms.results SRR9883099.Quant.isoforms.results SRR9883100.Quant.isoforms.results SRR9883103.Quant.isoforms.results SRR9883105.Quant.isoforms.results SRR9883110.Quant.isoforms.results SRR9883122.Quant.isoforms.results SRR9883123.Quant.isoforms.results SRR9883125.Quant.isoforms.results SRR9883151.Quant.isoforms.results SRR9883152.Quant.isoforms.results SRR9883156.Quant.isoforms.results SRR9883157.Quant.isoforms.results SRR9883163.Quant.isoforms.results SRR9883164.Quant.isoforms.results SRR9883165.Quant.isoforms.results SRR9883168.Quant.isoforms.results > isoforms.counts.matrix

dSQ --jobfile RNA_seq_pipeline_GSE135251_remaining_task.txt -J STAR_remaining --mem-per-cpu=64G -t 23:00:00 -p bigmem,day --batch-file RNA_seq_pipeline_GSE135251_remaining_task_run.sh
sbatch RNA_seq_pipeline_GSE135251_remaining_task_run.sh
Submitted batch job 25327312

sbatch simulation_utmost_he0.4_cp0.05_v2_run.sh
Submitted batch job 25349741

sbatch utmost_test_real_chr_run.sh
Submitted batch job 25414476

sbatch general_utmost_summary_real_updated_run.sh
Submitted batch job 25534666

bash dsq_bvjti_simulation_v1.sh
bash dsq_bvjti_simulation_v2.sh
bash dsq_bvjti_simulation_v3.sh

bash bvjti_simulation_v1_run.sh
bash bvjti_simulation_v2_run.sh
bash bvjti_simulation_v3_run.sh


ssh -N -f -L localhost:8777:localhost:8888 zyu@45.79.170.93

Error: 

dsq-jti_real_19-26130993_0417-c24n08.out
INFO initializing model training ...
Error in y - predmat : non-numeric argument to binary operator
Calls: tryCatch ... tryCatchList -> cv.glmnet -> cv.glmnet.raw -> do.call -> cv.elnet
In addition: Warning messages:
1: Column `tissue` joining factor and character vector, coercing into character vector
2: Column `tissue` joining factor and character vector, coercing into character vector
Execution halted

==> dsq-jti_real_19-26130993_0426-c27n04.out <==

[1] "INFO: 427 / 2292"
Reading: /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/chr19/ENSG00000118160.13/ENSG00000118160.13.b
im
Reading: /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/chr19/ENSG00000118160.13/ENSG00000118160.13.f
am
Reading: /gpfs/loomis/project/zhao/zy92/GTEX/pruned_loc/chr19/ENSG00000118160.13/ENSG00000118160.13.bed
[1] "INFO: genotype matrix dimension:660 * 838"
[1] "INFO: Reading expression files:ENSG00000118160.13"
[1] "INFO: Training ..."
Error: measure variables not found in data: NA
Execution halted


bash submit_wbvls_enet_pearson_real.sh
Submitted batch job 27247893
Submitted batch job 27247894
Submitted batch job 27247895
Submitted batch job 27247896
Submitted batch job 27247897
Submitted batch job 27247898
Submitted batch job 27247899
Submitted batch job 27247900
Submitted batch job 27247901
Submitted batch job 27247902
Submitted batch job 27247903
Submitted batch job 27247904
Submitted batch job 27247905
Submitted batch job 27247906
Submitted batch job 27247907
Submitted batch job 27247908
Submitted batch job 27247909
Submitted batch job 27247910
Submitted batch job 27247911
Submitted batch job 27247912
Submitted batch job 27247913
Submitted batch job 27247914



