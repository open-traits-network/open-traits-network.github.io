library(reshape2)
library(dplyr)
library(tidyverse)
library(R.utils)

# create output directory
if(!dir.exists("_data/R/summaries")){dir.create("_data/R/summaries")}  
if(!dir.exists("_data/R/temp")){dir.create("_data/R/temp")}

# set variables
curator <- "https://opentraits.org/members/alexander-keller"
dataset_url <- "https://opentraits.org/datasets/arthropod-species-traits"
dataset <- "arthropod-species-traits"

# Download file
download.file(url = "https://datadryad.org/stash/downloads/file_stream/41139",
              destfile = paste("_data/R/temp/",dataset, sep=""))
setwd("_data/R/temp")

# unzipping if necessary
#unzip(dataset)

# setting location of table and read file
path <- dataset
arthropod.species.traits <- read.table(paste("./", path, sep=""), sep="\t", header=T, fill=T)
cols.used <- c(4,6:16)

## reshape from wide to long 
arthropod.species.traits_long <- melt(arthropod.species.traits[,cols.used], id.vars=c("SpeciesID"))

## filter NAs
arthropod.species.traits_long.filter <- arthropod.species.traits_long[!is.na(arthropod.species.traits_long[,3]),]

# summarize
arthropod.species.traits_summary <- arthropod.species.traits_long.filter %>% count(SpeciesID,variable, sort = TRUE)

names(arthropod.species.traits_summary)[1] <- "scientificNameVerbatim"
names(arthropod.species.traits_summary)[2] <- "traitNameVerbatim"
names(arthropod.species.traits_summary)[3] <- "NumberOfRecords"
arthropod.species.traits_summary$OTNdatasetID <- dataset_url
arthropod.species.traits_summary$curator <- curator
arthropod.species.traits_summary$accessDate <- Sys.Date()


head(arthropod.species.traits_summary)

write.csv(arthropod.species.traits_summary, file=paste("../summaries/",dataset,".csv",sep="") )
gzip(paste("../summaries/",dataset,".csv",sep=""), destname=paste("../summaries/",dataset,".csv.gz",sep=""))
unlink(paste("../summaries/",dataset,".csv",sep=""))
