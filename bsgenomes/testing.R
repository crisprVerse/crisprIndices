# rng <- GRanges(seqnames="12",
#  ranges=IRanges(start=25209843-10,
#  	end=25209843+10)
# )

# file="00-common_all.vcf.gz"
# file="00-common_all_snps_only.vcf.gz"
# file="00-common_all_snps_only_maf1perc.vcf.gz"
# x=readVcf(file, "hg38", param=rng)
# names(x)


#   ID       rs         rs_site rs_site_rel allele_ref allele_minor MAF_1000G
#   <fct>    <chr>        <int>       <dbl> <chr>      <chr>            <dbl>
# 1 sgrna_51 rs1137282 25209843           0 A          G                0.176
#   MAF_TOPMED snp_type snp_length nuclease species genome
#        <dbl> <chr>         <int> <chr>    <chr>   <chr> 
# 1      0.197 snp               1 Cas9     human   GRCh38


library(BSgenome.Hsapiens.UCSC.hg38)
library(BSgenome.Hsapiens.UCSC.hg38.dbSNP151.major)
library(BSgenome.Hsapiens.UCSC.hg38.dbSNP151.minor)
genome <- BSgenome.Hsapiens.UCSC.hg38
major  <- BSgenome.Hsapiens.UCSC.hg38.dbSNP151.major
minor  <- BSgenome.Hsapiens.UCSC.hg38.dbSNP151.minor

# KRAS SNP (rs1137282)
chr="chr12"
pos=25209843
getSeq(genome, chr, pos,pos)
getSeq(major, chr, pos,pos)
getSeq(minor, chr, pos,pos)

# SNP with MAF>0.5 (rs12813551)
chr="chr12"
pos=25241845
getSeq(genome, chr, pos,pos)
getSeq(major, chr, pos,pos)
getSeq(minor, chr, pos,pos)

