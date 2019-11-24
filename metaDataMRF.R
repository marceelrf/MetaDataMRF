metaDataMRF <- function(dirname){
  
  
  Files <- list.files(path = dirname)
  
  Files <- Files[!grepl(pattern = "metaData",x = Files)]
  f1 <- NULL
  for(i in 1:length(Files)){
    s1 <- strsplit(Files[i],split = c("_"))
    s2 <- c(s1[[1]][1:(length(s1[[1]])-1)],strsplit(s1[[1]][length(s1[[1]])],split = "\\."))
    s3 <- unlist(s2)
    
    Meta <- data.frame(Date = s3[1],
                       Project = s3[2],
                       Colleagues = s3[3],
                       Experiment = s3[4],
                       Sample = s3[5],
                       Type = s3[6],
                       Format = s3[7])
    f1 <- rbind(f1,Meta)
  }
  sysdate <- Sys.Date()
  sysdate <- gsub(pattern = "-",replacement = "",x = sysdate)
  f1$Date <- ymd(f1$Date)
  f1$Format <- tolower(f1$Format)
  return(write.csv(f1,file = paste(dirname,"/",sysdate,"metaData",".csv",sep = ""),row.names = F))
}
