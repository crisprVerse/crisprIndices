library(Rbwa)
fasta <- "../../genomes/hg38/hg38.fa"
index_prefix <- "./hg38"
bwa_build_index(fasta=fasta,index_prefix=index_prefix)
