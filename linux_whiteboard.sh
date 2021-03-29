# delete core* 
find ./ -name "core*"  -type f -print0| xargs -0 \rm -rf

for i in {1..22}; do head -n 1 GTEx_Analysis_2017-06-05_v8_WholeGenomeSeq_838Indiv_Analysis_Freeze.lookup_table.txt > chr${i}_snp.txt; cat GTEx_Analysis_2017-06-05_v8_WholeGenomeSeq_838Indiv_Analysis_Freeze.lookup_table.txt | grep chr${i}_ >> chr${i}_snp.txt ; done



# cp the header 

cd chr11
for i in `ls` 
do
	echo $i
	head -1 ${i} > ../merged/${i} 
done
cd ..


# cp the block
for chr in {1..22}
do 
	cd chr${chr}

	for i in `ls` 
	do
		echo $i
		tail -n +2 -q ${i} >> ../merged/${i}
	done
	cd ..
done



$E=\frac{1}{2 N} \sum_{n=1}^{N}\left\|\mathbf{y}_{n}-\widehat{\mathbf{y}}_{n}\right\|_{2}^{2}$

/ysm-gpfs/pi/zhao/yz738/UTMOST/Common

scp ~/Downloads/ ylin83@jhu.edu@gateway2.marcc.jhu.edu:/work-zfs/pbs2/AL/pgbd/PGC/

PRS for Biploar
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
echo "0.01 0 0.01" >> range_list
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

Output: 
	prs.*.profile
	prs_clump.*.profile

5. Clumping 

plink \
    --bfile pgbd_nomono_goodgeno_peter 
    --clump-r2 0.1 \
    --clump-kb 250 \
    --clump ../PGC/pgc.bip.full.clean.2012.txt \
    --clump-snp-field snpid \
    --clump-field pval \
    --out pgbd_nomono_goodgeno_peter_clump

Liberty mutual: AOS23135969670
h4123131551470

Amazon Q&A
Aug 4 - 12:00 pm - 1:00 pm

Ramya Mohan -
Abhishek Gupta -
Andrew Bruce -
Jade DuBois -
Darcy Stubblefield -
Vijay Nirmalananda -


