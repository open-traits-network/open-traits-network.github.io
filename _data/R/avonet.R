library(reshape2)
library(dplyr)

# Downloaded from: https://figshare.com/s/b990722d72a26b5bfead
curator <- "alexander-keller"
dataset <- "avonet"

setwd("~/Documents/Arbeit/Projects/Ecology/sDevTrait_Synthesis/GAPS/R")
traits <- read.table(paste("../data/avonet/ELECode/ELEData/TraitData/AVONET_Raw_Data.csv", sep=""), sep=",", header=T, fill=T)

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


names(traits_summary)[1] <- "taxonIDVerbatim"
names(traits_summary)[2] <- "scientificNameVerbatim"


names(traits_summary)[3] <- "traitNameVerbatim"
names(traits_summary)[4] <- "NumberOfRecords"
traits_summary$OTNdatasetID <- dataset
traits_summary$curator <- curator
traits_summary$accessDate <- Sys.Date()

head(traits_summary)

write.csv(traits_summary, file=paste("summaries/",dataset,".csv",sep="") )
