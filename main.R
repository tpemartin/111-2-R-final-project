# Final project ----
## set up environment  -----
source("./R/helpers.R")
## progress saving object -----
final <- list()

## import data from JSON file
final$raw <- jsonelite::fromJSON("./data/2018-2019.json")

## import data from csv file
final$raw <- read.csv("./data/2018-2019.csv", stringsAsFactors = FALSE)

# save progress ---
saveRDS(final, file="final.Rds")
