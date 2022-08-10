library(reshape2)
library(dplyr)
library(tidyverse)
library(R.utils)

# create output directory
if(!dir.exists("_data/R/summaries")){dir.create("_data/R/summaries")}  
if(!dir.exists("_data/R/temp")){dir.create("_data/R/temp")}

# set variables
curator <- "alexander-keller"
dataset <- "chinaroots"

# Download file
download.file(url = "https://figshare.com/ndownloader/files/22233870",
              destfile = paste("_data/R/temp/",dataset, sep=""))
setwd("_data/R/temp")

# unzipping if necessary
#unzip(dataset)

# setting location of table and read file
path <- dataset
traits <- read.table(paste("./", path, sep=""), sep=",", header=T, fill=T)

tail(traits)
cols.used <- c(4:15)
traits <- traits[,cols.used]

## reshape from wide to long 
traits_long <- melt(traits, id.vars=c(colnames(traits)[1],colnames(traits)[2]))

## filter NAs
traits_long.filter <- traits_long[!is.na(traits_long[,4]),]

dim(traits_long)
dim(traits_long.filter)

# summarize

traits_long.filter$SpeciesVerb <- interaction(traits_long.filter$Genus,traits_long.filter$Species, sep=" ")
traits_summary <- traits_long.filter %>% count(SpeciesVerb,variable, sort = TRUE)


names(traits_summary)[1] <- "scientificNameVerbatim"
names(traits_summary)[2] <- "traitNameVerbatim"
names(traits_summary)[3] <- "NumberOfRecords"

traits_summary$OTNdatasetID <- dataset
traits_summary$curator <- curator
traits_summary$accessDate <- Sys.Date()

head(traits_summary)

write.csv(traits_summary, file=paste("../summaries/",dataset,".csv",sep="") )
gzip(paste("../summaries/",dataset,".csv",sep=""), destname=paste("../summaries/",dataset,".gz",sep=""))
unlink(paste("../summaries/",dataset,".csv",sep=""))

