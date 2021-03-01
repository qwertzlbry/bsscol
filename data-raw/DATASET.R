## code to prepare `DATASET` dataset goes here
bss_colors <- readRDS("data/Farbspektrum.rds")
basic_colors<- c(
  `weiss` = "#FFFFFF" ,
  `schwarz`  ="#000000" ,
  `hellgrau1`="#F2F2F2" ,
  `grau` ="#BFBFBF" ,
  `blau`  = "#155F90" ,
  `grün`   =  "#ABE441" ,
  `rot`     = "#E5233D",
  `gelb`  = "#EEEC22" ,
  `hellblau` =  "#6BC5FF",
  `hellgrau2`= "#EDF6F9")

usethis::use_data(bss_colors, overwrite = TRUE)
usethis::use_data(basic_colors, overwrite = TRUE)
