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
dSQ --jobfile create_table_task_all_tissues_bvls.txt  -J create_table_bvls --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_all_tissues_bvls_run.sh
dSQ --jobfile create_table_task_all_tissues_enet.txt  -J create_table_enet --mem-per-cpu=16G -t 24:00:00 -p bigmem,day --batch-file create_table_task_all_tissues_enet_run.sh


# build database


