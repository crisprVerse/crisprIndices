#files <- list.files("../genomes/hg38_major/fastas/")
#files <- gsub(".fa", "", files)
#chrs  <- paste0("chr", c(1:22, "X", "Y", "M"))
#files <- c(chrs, setdiff(files, chrs))
#dput(files)
library(BSgenome)
forgeBSgenomeDataPkg("seeds.file.hg38.major.txt")
forgeBSgenomeDataPkg("seeds.file.hg38.minor.txt")
# R CMD build BSgenome.Hsapiens.UCSC.hg38.dbSNP151.major
# R CMD build BSgenome.Hsapiens.UCSC.hg38.dbSNP151.minor
# R CMD INSTALL BSgenome.Hsapiens.UCSC.hg38.dbSNP151.major_0.0.9999.tar.gz
# R CMD INSTALL BSgenome.Hsapiens.UCSC.hg38.dbSNP151.minor_0.0.9999.tar.gz
# R CMD check BSgenome.Hsapiens.UCSC.hg38.dbSNP151.major_0.0.9999.tar.gz
# R CMD check BSgenome.Hsapiens.UCSC.hg38.dbSNP151.minor_0.0.9999.tar.gz