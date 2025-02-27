ml BCFtools
vcf="/gstore/data/omni/crispr/crisprIndices/snps/dbsnp151.grch38/hg38.dbsnp151.major.allele.vcf.gz"
outputgenome="hg38_major.fa"
refgenome="/gstore/data/omni/crispr/crisprIndices/genomes/hg38/hg38.fa"
bcftools consensus -f $refgenome -s major $vcf > $outputgenome