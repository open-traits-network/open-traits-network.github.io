#load libraries

  library(tidyverse)

# create temporary directory

  if(!dir.exists("_data/R/temp")){dir.create("_data/R/temp")}

# create output directory

  if(!dir.exists("_data/R/summaries")){dir.create("_data/R/summaries")}  
  
# set variables
  curator <- "brian-s-maitner"
  dataset <- "try"
  

# Unzip file
  
  unzip(zipfile = "_data/R/manual_downloads/SpeciesTraitsCombinations4OTN_Family.zip",
        exdir = "_data/R/temp")

# read in file
  
  try <- read.csv(file = "_data/R/temp/SpeciesTraitsCombinations4OTN_Family.txt",
                  header = TRUE)
  
# rename columns
  
  try %>%
    rename(taxonIDVerbatim = AccSpeciesID,
           scientificNameVerbatim = AccSpeciesName,
           traitIdVerbatim = TraitID,
           traitNameVerbatim = TraitName,
           NumberOfRecords = CountOfObsDataID,
           family = Family) %>%
    mutate(accessDate = Sys.Date(),
           OTNdatasetID = dataset,
           curator = curator
           )-> try
  
# write as csv

  write.csv(x = try,
            file = "_data/R/temp/try.csv")
  
#zip file

  zip(files = "_data/R/temp/try.csv",
      zipfile = "_data/R/summaries/try.zip")
  
#remove temp file

  unlink(file.path("_data/R/temp/"),recursive = TRUE)
  
  
  
  
  
