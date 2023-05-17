finalProject <- list()
finalProject$data111$source = "https://data.gov.tw/dataset/161199"

filenames <- list.files("/Users/martin/Documents/GitHub/111-2-R-final-project/111年傷亡道路交通事故資料")

for(i in filenames){
  finalProject[[i]] <-
    read.csv(glue::glue(
      "/Users/martin/Documents/GitHub/111-2-R-final-project/111年傷亡道路交通事故資料/{i}"))
}

finalProject$`111年度A2交通事故資料_3.csv`

saveRDS(finalProject, file="finalProject_traffic.Rds")
