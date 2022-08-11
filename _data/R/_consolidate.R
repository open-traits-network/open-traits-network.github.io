### consolidating individual csv files to a file matching the whole template
library(dplyr)

root.dir <- getwd()

if(!dir.exists("_data/R/temp_consolidate")){dir.create("_data/R/temp_consolidate")}
list.zip <- list.files(path = "_data/R/summaries")

setwd("_data/R/summaries/")

all.data <- list()

for (i in 1:length(list.zip)){
  unzip(list.zip[i])
  file.copy(gsub("zip","csv",list.zip[i]), "../temp_consolidate")
  unlink(gsub("zip","csv",list.zip[i]))
  all.data[[gsub(".zip","",list.zip[i])]]<-read.table(paste("../temp_consolidate/",gsub("zip","csv",list.zip[i]),sep=""), sep=",", header=T, row.names=1)
}

setwd(root.dir)

headerTable = data.frame(matrix(vector(), 0, 21,
                        dimnames=list(c(), c("taxonIdVerbatim","scientificNameVerbatim","resolvedTaxonId","resolvedTaxonName","parentTaxonId","family","phylum","traitIdVerbatim","traitNameVerbatim","bucketId","bucketName","counts","datasetId","numberOfRecords","curator","accessDate"))),
                        stringsAsFactors=F)


for (z in 1:length(names(all.data))){
  all.data[[z]]$taxonIDVerbatim <- as.character(all.data[[z]]$taxonIDVerbatim)
  headerTable <- bind_rows(headerTable,all.data[[z]])
}
  
tail(headerTable)
write.csv(file="_data/R/summaries/_all.csv",headerTable)
zip("_data/R/_all.zip","_data/R/summaries/_all.csv")
unlink("_data/R/summaries/_all.csv")
