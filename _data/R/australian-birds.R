#load libraries
library(tidyverse)


# create temporary directory

  if(!dir.exists("_data/R/temp")){dir.create("_data/R/temp")}

# create otuput directory

  if(!dir.exists("_data/R/summaries")){dir.create("_data/R/summaries")}  


# set variables
  curator <- "brian-s-maitner"
  dataset <- "australian-birds"

# Download file
  download.file(url = "https://figshare.com/ndownloader/files/3417176",
                destfile = "_data/R/temp/australian-birds.csv")

# Read in file
  ausbirds <-  read.table("_data/R/temp/australian-birds.csv",sep = ",",header = TRUE)
  
# Mutate into useful format
  
  ausbirds %>%
    mutate("scientificNameVerbatim" = paste(X4_Genus_name_2," ",X5_Species_name_2,sep = ""))%>%
    rename("family" = X10_Family_scientific_name_2) %>%
    pivot_longer(cols = c(96:110,112:192), names_to = "traitNameVerbatim", values_to = "traitvalues") -> ausbirds

  # NA removal
  ausbirds %>%
    filter(!is.na(traitvalues)) -> ausbirds
  

  ausbirds %>%
    dplyr::select(scientificNameVerbatim, family, traitNameVerbatim, traitvalues)%>%
    group_by(scientificNameVerbatim,family,traitNameVerbatim) %>%
    summarise(NumberOfRecords = n())%>%
    mutate(accessDate = Sys.Date(),
           OTNdatasetID = dataset,
           curator = curator) -> ausbirds

#write output
  write.csv(x = ausbirds,file = "_data/R/temp/australian-birds.csv")
  
# zipping
  zip(zipfile = "_data/R/summaries/australian-birds.zip",
      files = "_data/R/temp/australian-birds.csv")  

# clean up
  unlink(file.path("_data/R/temp/"))
  
  
  
  
  
  
  
  
  
  
  
  
  
  