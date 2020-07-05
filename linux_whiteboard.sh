# delete core* 
find ./ -name "core*"  -type f -print0| xargs -0 \rm -rf

$E=\frac{1}{2 N} \sum_{n=1}^{N}\left\|\mathbf{y}_{n}-\widehat{\mathbf{y}}_{n}\right\|_{2}^{2}$

/ysm-gpfs/pi/zhao/yz738/UTMOST/Common

scp ~/Downloads/ ylin83@jhu.edu@gateway2.marcc.jhu.edu:/work-zfs/pbs2/AL/pgbd/PGC/


1. Download the PGC GWAS summary statistics
clump_data full_data

2. Format the GWAS summary statistics respectively 
effect_size = log(OR)

3. Generate q score range
- SNP.pvalue
awk '{print $1,$8}' pgc.bip.clump.clean.2012.txt > SNP.clump.pvalue
awk '{print $1,$8}' pgc.bip.full.clean.2012.txt > SNP.pvalue

- range_list
echo "0.001 0 0.001" > range_list
echo "0.05 0 0.05" >> range_list
echo "0.1 0 0.1" >> range_list
echo "0.2 0 0.2" >> range_list
echo "0.3 0 0.3" >> range_list
echo "0.4 0 0.4" >> range_list
echo "0.5 0 0.5" >> range_list

4. Generate scores via PLINK for different p-value thresholds

plink \
    --bfile pgbd_nomono_goodgeno_peter \
    --score ../PGC/pgc.bip.full.clean.2012.txt 1 5 12 header \
    --q-score-range ../PGC/range_list  ../PGC/SNP.pvalue \
    --out prs


plink \
    --bfile pgbd_nomono_goodgeno_peter \
    --score ../PGC/pgc.bip.clump.clean.2012.txt 1 5 11 header \
    --q-score-range ../PGC/range_list  ../PGC/SNP.clump.pvalue \
    --out prs_clump


5. Clumping 

plink \
    --bfile pgbd_nomono_goodgeno_peter 
    --clump-r2 0.1 \
    --clump-kb 250 \
    --clump ../PGC/pgc.bip.full.clean.2012.txt \
    --clump-snp-field snpid \
    --clump-field pval \
    --out pgbd_nomono_goodgeno_peter_clump



