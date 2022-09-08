rm(list = ls())
ini_time <- Sys.time()


# Set working directory ----
setwd("C:/Users/CLIENTE/Documents/CEJOR")


# Enable packages ----
#install.packages("magrittr")
#install.packages("fst")
#install.packages('quantmod')

library(magrittr)
library(fst)
library(quantmod)


# Extraction of Ibovespa prices ----
X <- getSymbols("^BVSP", # change stock as needed
                to = "2020-12-31", # change date as needed
                auto.assign = F)
X <- X %>% na.omit
datas <- index(X)

X <- as.data.frame(X)
names(X) <- c("open","high","low","close","volume","close.adj")
X$date <- datas

X <- X[X$volume>0,]

write_fst(X,path = "IBOVESPA",compress = 50)
cat("IBOVESPA");cat(" - ");cat(datas %>% as.character %>% tail(1));cat(" // ")
end_time <- Sys.time()
cat("\n")

print(end_time - ini_time)
