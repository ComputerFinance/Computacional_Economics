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


# Extraction of stocks prices ----
acoes <- c("abev3","b3sa3","bbas3","bbdc4","bbse3","bova11","brfs3","brkm5",
           "brml3","ccro3","ciel3","cmig4","cogn3","csan3","csna3","cyre3",
           "ecor3","egie3","elet3","embr3","eqtl3","ggbr4","goau4","hype3",
           "itsa4","itub4","jbss3","amer3","lren3","mrfg3","petr4",
           "qual3","radl3","rail3","rent3","sbsp3","taee11","usim5",
           "vale3","vivt3","viia3","wege3","yduq3",
           "brap4","enbr3","flry3","klbn4","mult3","leve3","sanb11",
           "ugpa3") # change stock as needed

tickers <- acoes %>% casefold(upper = T) %>% paste0(".SA")

for (i in 1:length(tickers)) {
  X <- getSymbols(tickers[i],
                  to = "2020-12-31",  # change date as needed
                  auto.assign = F)
  X <- X %>% na.omit
  datas <- index(X)
  
  X <- as.data.frame(X)
  names(X) <- c("open","high","low","close","volume","close.adj")
  X$date <- datas
  
  X <- X[X$volume>0,]
  
  if (nrow(X)>=3000) {
    write_fst(X,path = tickers[i],compress = 50)
    cat(tickers[i]);cat(" - ");cat(datas %>% as.character %>% tail(1));cat(" // ")
  }
}

end_time <- Sys.time()
cat("\n")

print(end_time - ini_time)
