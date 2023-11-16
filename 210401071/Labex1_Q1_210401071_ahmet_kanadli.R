#1.1

dosya_url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
dosya_isim <- "MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(dosya_url, destfile = dosya_isim, method = "auto",mode = "wb")

#1.2 

if (dim(maps)[1] == 10 && dim(maps)[2] == 9) {
  cat(" data.frame boyutları doğru.\n")
} else {
  cat("Hata: Data frame boyutları yalnış.\n")
}

#1.3

maps$Latitude<-gsub("N","",as.character(maps$Latitude))
maps$Latitude<-as.numeric(maps$Latitude)

# 1.4

idx <- grep("W", maps$Longitude)