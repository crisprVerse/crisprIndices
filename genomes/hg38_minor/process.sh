ml BCFtools
vcf="/gstore/data/omni/crispr/crisprIndices/snps/dbsnp151.grch38/hg38.dbsnp151.minor.allele.vcf.gz"
outputgenome="hg38_minor.fa"
refgenome="/gstore/data/omni/crispr/crisprIndices/genomes/hg38/hg38.fa"
bcftools consensus -f $refgenome -s minor $vcf > $outputgenome
