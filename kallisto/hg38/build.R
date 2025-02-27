library(kallistobus.bin)
fastaFile <- "../../transcriptomes/human/ensembl_human_104.fasta"
indexName <- "ensembl_human_104"
buildKallistoIndex(fastaFile, indexName)

buildKallistoIndex <- function(fastaFile,
                               indexName
){
    bin <- kallistobus.bin::get_kallisto_path()
    cmd <- paste0(bin,
                  " index -i ", indexName,
                  " ", fastaFile)
    system(cmd)
}
