library(reshape2)
library(dplyr)
library(tidyverse)

# create output directory
if(!dir.exists("_data/R/summaries")){dir.create("_data/R/summaries")}  
if(!dir.exists("_data/R/temp")){dir.create("_data/R/temp")}

# set variables
curator <- "https://opentraits.org/members/alexander-keller"
dataset_url <- "https://opentraits.org/datasets/avonet"
dataset <- "avonet"

# Download file
download.file(url = "https://figshare.com/ndownloader/files/34480865?private_link=b990722d72a26b5bfead",
              destfile = paste("_data/R/temp/",dataset, sep=""))
setwd("_data/R/temp")

# unzipping if necessary
unzip(dataset)

# setting location of table and read file
path <- "ELEData/TraitData/AVONET_Raw_Data.csv"
traits <- read.table(paste("./", path, sep=""), sep=",", header=T, fill=T)

tail(traits)
cols.used <- c(1,2,14:23)

## reshape from wide to long 
traits_long <- melt(traits[,cols.used], id.vars=c(colnames(traits)[1],colnames(traits)[2]))

## filter NAs
traits_long.filter <- traits_long[!is.na(traits_long[,4]),]

dim(traits_long)
dim(traits_long.filter)

# summarize
traits_summary <- traits_long.filter %>% count(Avibase.ID,Species1_BirdLife,variable, sort = TRUE)


names(traits_summary)[1] <- "taxonIdVerbatim"
names(traits_summary)[2] <- "scientificNameVerbatim"
names(traits_summary)[3] <- "traitNameVerbatim"
names(traits_summary)[4] <- "NumberOfRecords"

traits_summary$OTNdatasetID <- dataset_url
traits_summary$curator <- curator
traits_summary$accessDate <- Sys.Date()

head(traits_summary)

write.csv(traits_summary, file=paste("../summaries/",dataset,".csv",sep="") )
gzip(paste("../summaries/",dataset,".csv",sep=""), destname=paste("../summaries/",dataset,".csv.gz",sep=""))
unlink(paste("../summaries/",dataset,".csv",sep=""))

