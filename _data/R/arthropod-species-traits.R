library(reshape2)
library(dplyr)

# Downloaded from: https://doi.org/10.5061/dryad.53ds2
curator <- "AK"
dataset <- "arthropod-species-traits"

setwd("~/Documents/Arbeit/Projects/Ecology/sDevTrait_Synthesis/GAPS/R")
arthropod.species.traits <- read.table(paste("../data/",dataset,".txt", sep=""), sep="\t", header=T, fill=T)
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
arthropod.species.traits_summary$OTNdatasetID <- dataset
arthropod.species.traits_summary$curator <- curator
arthropod.species.traits_summary$accessDate <- Sys.Date()


head(arthropod.species.traits_summary)

write.csv(arthropod.species.traits_summary, file="summaries/arthropod-species-traits.csv" )
