library(crisprDesign)
library(crisprDesignData)
library(BSgenome.Mmusculus.UCSC.mm10)
txObject <- txdb_mouse
bsgenome <- BSgenome.Mmusculus.UCSC.mm10
ids <- unique(txObject$exons$tx_id)

mrnasMouse <- getMrnaSequences(ids,
                               bsgenome=bsgenome,
                               txObject=txObject)
save(mrnasMouse,
     file="mrnasMouse.rda")


load("mrnasMouse.rda")
library(Biostrings)

writeXStringSet(mrnasMouse,
                file="ensembl_mouse_102.fasta",
                format="fasta")


premrnasMouse <- getPreMrnaSequences(ids,
                                     bsgenome=bsgenome,
                                     txObject=txObject)
library(Biostrings)

writeXStringSet(premrnasMouse,
                file="ensembl_mouse_102_with_introns.fasta",
                format="fasta")



