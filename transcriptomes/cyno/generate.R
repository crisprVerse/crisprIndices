library(crisprDesign)
library(crisprDesignData)
library(BSgenome.Mfascicularis.NCBI.6.0)
txObject <- txdb_cyno
bsgenome <- BSgenome.Mfascicularis.NCBI.6.0
ids <- unique(txObject$exons$tx_id)

mrnasMonkey <- getMrnaSequences(ids,
                                bsgenome=bsgenome,
                                txObject=txObject)
library(Biostrings)

writeXStringSet(mrnasMonkey,
                file="ensembl_cyno_108.fasta",
                format="fasta")
