library(crisprDesign)
library(crisprDesignData)
library(BSgenome.Hsapiens.UCSC.hg38)
txObject <- txdb_human
bsgenome <- BSgenome.Hsapiens.UCSC.hg38
ids <- unique(txObject$exons$tx_id)

mrnasHuman <- getMrnaSequences(ids,
                               bsgenome=bsgenome,
                               txObject=txObject)
save(mrnasHuman, file="mrnasHuman.rda")


load("mrnasHuman.rda")
library(Biostrings)

writeXStringSet(mrnasHuman,
                file="ensembl_human_104.fasta",
                format="fasta")


premrnasHuman <- getPreMrnaSequences(ids,
                                     bsgenome=bsgenome,
                                     txObject=txObject)
library(Biostrings)

writeXStringSet(premrnasHuman,
                file="ensembl_human_104_with_introns.fasta",
                format="fasta")


