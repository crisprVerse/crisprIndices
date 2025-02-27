# Common variants from dbSNP151: 00-common_all_snps_only.vcf + 00-common_all_snps_only.vcf.tbi
Data downloaded from https://www.ncbi.nlm.nih.gov/variation/docs/human_variation_vcf/
on Dec 9 2019.

# We filter variants to contain only SNVs
# And we filter out out variants with the alternate allele having frequency <1%. 
# And only keep the two most represented alleles for non bi-allelic SNPs