#Aula 11

library(readxl)
IPCA.df<-read_excel("c:/Econometria/IPCA.xls")


plot(IPCA.df$IPCA, type = "l")


Inflacao <- ts(IPCA.df$IPCA, start = 2008, frequency = 12)


plot(decompose(Inflacao))

decomposicao <- decompose(Inflacao)

Tendencia <- decomposicao$trend

Sazonalidade <- decomposicao$seasonal

Ciclo <- decomposicao$random

Tab_Dados1 <- data.frame(IPCA.df$IPCA, Ciclo)

View(Tab_Dados1)

plot(Sazonalidade, type="l")

Serie_Tempo1 <- ts(Tab_Dados1, start = 2008, frequency = 12)
plot(Serie_Tempo1, plot.type = "single", col= c("Blue", "Red"))

Tab_Dados2 <- data.frame(IPCA.df$IPCA, Tendencia)
Serie_Tempo2 <- ts(Tab_Dados2, start = 2008, frequency = 12)
plot(Serie_Tempo2, plot.type = "single", col= c("Blue", "Red"))