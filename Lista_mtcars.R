# Carregar os dados
#Para ver o caminho no Linux:
#cd ~/Downloads
#pwd

#Caminho no Windows:
mtcars <- read.csv2("C:/Users/marce/Downloads/mtcars.csv")

# Exibir os dados na tabela
View(mtcars)

######################################################
######################################################
######################################################

#Letra A:

#Mínimo e o máximo valor:
max(mtcars$mpg)
min(mtcars$mpg)

#Media:
mean(mtcars$mpg)

#Mediana:
median(mtcars$mpg)

#Desvio Padrão:
sd(mtcars$mpg)

#Quartis:
quantile(mtcars$mpg, probs = 0.25)
quantile(mtcars$mpg, probs = 0.50)
quantile(mtcars$mpg, probs = 0.75)

#Histograma:
hist(mtcars$mpg, labels = TRUE, main = "Histograma de mpg", xlab = "mpg", ylab = "Frequência")

#Boxplot:
boxplot(mtcars$mpg, main = "Boxplot: mpg", col = "Brown")

######################################################
######################################################
######################################################


#Letra B:

dados = data.frame(
  coluna_hp = mtcars$hp,
  coluna_disp = mtcars$disp
)

boxplot (dados,
         main = "Boxplot hp x disp",
         xlab = "Colunas",
         ylab = "Valores",
         col = c("red", "blue"))


######################################################
######################################################
######################################################

#Letra C:

#Quartis:
quantile(mtcars$qsec, probs = 0.25)
quantile(mtcars$qsec, probs = 0.50)
quantile(mtcars$qsec, probs = 0.75)

 
#quartis = quantile(mtcars$qsec, probs = c(0.25, 0.5, 0.75, 1.0))
#quartisSec = cut(mtcars$qsec, breaks = quartis, labels = c("Q1", "Q2", "Q3"))
#quartisSec

#Tabela:
limiteclas_qsec = seq(14, 22, by = 2)

classes_qsec = c("14 |- 16", "16 |- 18", "18 |- 20", "20 |- 22")

Freq_qsec = table (cut(mtcars$qsec, breaks = limiteclas_qsec, right = FALSE, labels = classes_qsec))

FreqAc_qsec = cumsum(Freq_qsec)
FreqRel_qsec = prop.table(Freq_qsec)
FreqRelAc_qsec = cumsum(FreqRel_qsec)

TabResul_qsec = cbind(Freq_qsec, FreqAc_qsec, FreqRel_qsec = round(FreqRel_qsec*100, digits = 2), FreqRelAc_qsec = round (FreqRelAc_qsec*100, digits = 2))

TabResul_qsec

#Histograma:

hist(mtcars$qsec, labels = TRUE, main = "Histograma de qsec", xlab = "qsec", ylab = "Frequência")

######################################################
######################################################
######################################################


#Letra D:

hist(mtcars$hp, labels = TRUE)

limiteclas = seq(50, 350, by = 50)

classes = c("50 |- 100", "100 |- 150", "150 |- 200", "200 |- 250", "250 |- 300", "300 |- 350")

Freq = table (cut(mtcars$hp, breaks = limiteclas, right = FALSE, labels = classes))

FreqAc = cumsum(Freq)
FreqRel = prop.table(Freq)
FreqRelAc = cumsum(FreqRel)

TabResul = cbind(Freq, FreqAc, FreqRel = round(FreqRel*100, digits = 2), FreqRelAc = round (FreqRelAc*100, digits = 2))

TabResul

######################################################
######################################################
######################################################

#Letra E:

#Matriz com as respectivas frequências:

matriz_freq = table(mtcars$motor, mtcars$marcha)

matriz_freq

#Gráficos de Barra:

freq_marcha = table(mtcars$marcha)
freq_motor = table(mtcars$motor)

tabela_mis = table(mtcars$marcha, mtcars$motor)

barplot ( freq_motor, freq_marcha, main = "Motor x Marcha", col = c("yellow", "orange"), xlab = "Motor", ylab = "Marcha",  ylim = c(0, 20))

barplot (freq_marcha, freq_motor, main = "Marcha x Motor", col = c("yellow", "orange"), xlab = "Marcha", ylab = "Motor",  ylim = c(0, 20))

######################################################
######################################################
######################################################

#Letra F:

######################################################
######################################################
######################################################

#Letra G:

######################################################
######################################################
######################################################

#Letra H:
