#################################################################################################
##############################################AB1################################################
#################################################################################################

###### Introdução ao Software R #########################

# NÃo usar palavras reservadas:
# break, else, for, function, IF, in, next, repeat, while, FALSE, Inf, NA, NaN, NULL,TRUE ...
# diferença entre letras maiasculas e minusculas 

print ("olá mundo")

m <- 4 * 15
print(m)

5 * 15
m = 5 * 15
m

a <- 2
b <- 4
c <- a * b
d <- a**b
e <- b / a
f <- (b - a) * 50
a;b;c;d;e;f

# TIPOS DE OBJETOS 

# numeric: numerico
# integer: inteiro
# character (string): caracteres
# logical (boolean): logicos (True e False)
# factor: categorias bem definidas. ex: genero (masculino e feminino)
#                                    
y = 2
class(y)

y <- as.integer(y)
class(y)

x = 7.5
class(x)
x <- as.integer(x)
class(x)
x

#  Os objetos da classe character são representados como texto.

caractere <- "palavra"
class(caractere)

logica <- "TRUE"
class(logica)

logica <- TRUE
class(logica)

genero <- c("masculino","feminino")
genero
class(genero)

# Os objetos da classe factor são representados como números inteiros. 
# Usados para representar variáveis categóricas.

genero <- as.factor(genero)
class(genero)

###   ESTRUTURA DOS DADOS - VETORES   ###

vetorx <- c(1, 2, 3, 4, 5, 6, 7)
class(vetorx)
vetorx

dias <- c("segunda", "terça", "quarta", "quinta", "sexta", "sabado", "domingo")
class(dias)
dias

juntando <- c(vetorx, dias)
juntando
class(juntando)

gastos_dia <- c(400, 300, 100, 500, 150, 430, 70)
class(gastos_dia)
length(gastos_dia)

ordem_crescente <- sort(gastos_dia)
ordem_crescente
total <- sum(gastos_dia)  ; total
minimo <- min(gastos_dia) ; minimo
maximo <- max(gastos_dia) ; maximo
media <- mean(gastos_dia) ; media

# ----------- mostrando os resultados na mesma linha -------------

cat ( "Soma dos Gastos =", total," e Média = ", mean(gastos_dia))

cat (total, minimo)

intervalo <- (3:8)
intervalo

passo <- seq(2,42, by = 5)
passo

repeticao <- rep(2,8)
repeticao

repeticao_multipla <- rep(c(3,5),c(4,6))
repeticao_multipla

repeticao_programada <- rep(3:5, each = 3)
repeticao_programada

# --------------- uso de vetores ---------------------

vetor2 <- c(2,4,6,8,10,12)
vetor2
vetor3 <- c(vetor2, 14) # acrescentou 14 ao vetor
vetor3
class(vetor3)

vetor4 <- c(vetor3,"pares")  
vetor4
class(vetor4)  # vetor numerico foi transformado para caracteres

posicao <- vetor2 [2]
posicao

posicao_excluida <- vetor2 [-3]  # retirou o nro. 6
posicao_excluida


###    ESTRUTURA DOS DADOS - MATRIZES    ###

matriz <- matrix(c(4,8,12,16,20,24),nrow=2,ncol=3,byrow=TRUE)
print(matriz)

matriz <- matrix(c(4,8,12,16,20,24),nrow=3,ncol=2,byrow=FALSE)
print(matriz)

matriz [2,2] # elemento (2,2)

vetorA <- c (2, 5, 8)
vetorB <- c (3, 6, 9)
matriz2 <- rbind(vetorA, vetorB)
matriz2

matriz2 [2,1]

matriz3 = matrix(2:9, ncol = 2)
matriz3

# Numero de linhas e colunas.
dim(matriz3)
nrow(matriz3)
ncol(matriz3)

# Nomear linhas e colunas
dimnames(matriz3) <- list(c("Linha1","Linha2","Linha3","Linha4"),
                          c("Coluna1", "Coluna2"))
matriz3

matriz4=matrix(2:13, nrow = 4, byrow=TRUE,
               dimnames = list(c("Linha1","Linha2","Linha3","Linha4"),
                               c("Coluna1", "Coluna2","Coluna3")))
matriz4

# Produto de um numero por uma matriz
produto <- 2 * matriz4
produto

# Soma ou subtração de matrizes
matriz5 = matrix(c(1,5,15,8),nrow=2,ncol=2,byrow=TRUE)
matriz5
matriz6 = matrix(c(2,4,6,10),nrow=2,ncol=2,byrow=TRUE)
matriz6

soma = matriz5+matriz6
soma

subtracao = matriz5-matriz6
subtracao

# Multiplicação Matricial

produto_matriz = matriz5 %*% matriz6
produto_matriz

# Media das linhas ou colunas
matriz5 = matrix(c(1,5,15,8),nrow=2,ncol=2,byrow=TRUE)
matriz5

media_coluna <- colMeans(matriz5)
media_coluna

media_linha <- rowMeans(matriz5)
media_linha

# Soma das linhas ou colunas
soma_linhas <- rowSums(matriz5)
soma_linhas

soma_colunas <- colSums(matriz5)
soma_colunas

# Matriz com caracteres
matriz7 = matrix(c("segunda","terça","quarta","quinta"),nrow=2,ncol=2,byrow=TRUE)
matriz7

###    ESTRUTURA DOS DADOS - LISTAS E DATA FRAME    ###

# É uma tabela de dados onde cada linha representa um registro e as colunas
# representam os atributos ou variaveis. Todos os elementos são vetores e
# precisam ter o mesmo comprimento.

mes_numero <- c(1,2,3,4,5,6,7,8,9,10,11,12)

mes_nome <- c("janeiro","fevereiro","março","abril","maio","junho","julho",
              "agosto","setembro","outubro","novembro","dezembro")

ano <- c(2021,2021,2021,2021,2021,2021,2021,2021,2021,2021,2021,2021)

dtf <- data.frame(mes_numero,mes_nome,ano)
dtf

class(dtf)

# Data Frames pertencentes ao R
df <- mtcars
df

df1 = iris
df1

nrow(df1)
ncol(df1)
dim(df1)
summary(df1)

#-- LISTAS --------------------
# coleção de elementos sem restrições quanto à classe, comprimento 
# ou estrutura de cada elemento

nome <- c("Luciano","Pedro","Joyce", "Maria")
idade <- c(46, 38, 27, 29)
curso <- c("Estatistica", "Linguagem R", "Redes Neurais", "Python")
lista <- list(nome, idade, curso)
print(lista)
class(lista)

lista <- data.frame(nome, idade, curso)
print(lista)
class(lista)

lista2 <- list (nome  = c("Luciano","Pedro","Joyce", "Maria"),
                idade = c(46, 38, 27, 29),
                curso = c("Estatistica","Linguagem R","Python"))

lista2 <- data.frame(lista2) # Erro (arguments differing number of rows: 4, 3)



###    IMPORTAÇÃO DE DATA FRAMES    ###


setwd("C:/Curso R 2023")


# Arquivo txt

df1 <- read.table("Elementos.txt")
df1

# Arquivo csv

df2 <- read.csv("Valores.csv")
df2

df3 <- read.csv("Vestibular.csv")

write.csv (df3, file ="dfwrite.csv")

df4 <- read.csv("dfwrite.csv")


# Arquivo excel.xlsx

install.packages("readxl")
library(readxl)

dfc<- read_xlsx("Cadastro.xlsx")
dfc

###    ESTRUTURA CONDICIONAL - if e else    ###

y <- scan () # forneça 20 ou maior ou menor 

if (y < 20) {print("y é menor que 20!")
} else if (y == 20){
  print("y é igual a 20")
} else {
  print("y é maior que 20")
}

nota <- scan () # informar valor para a media

if (nota >= 6){
  print('Aprovado')
} else if (nota >= 5 & nota< 6){
  print('Recuperação')
} else {
  print('Reprovado')
}

###    ESTRUTURA de REPETIÇÃO : for, while e repeat    ###

for (i in 1:10) {
  print (i)
}

lista <- c(1, 2, 3, 4, 10)
for (numero in lista){
  print(numero * 2)
}

c <- 1
while (c <= 10) {
  s = c + 10
  print(s)
  c = c + 1
}

y <- 2
repeat {
  print (y)
  y <- y+1
  if (y >= 10) break()
}


# -----------------Estatistica Descritiva ----------------------
#
# ---------------- Medidas de Tendência Central----------------- 

datfx = c(100, 120, 110,  90, 150, 145, 149, 165, 150, 144,
          134, 139, 220, 206, 211, 210, 266, 249, 248, 260)

# Cálculo da média
mean(datfx)
# Cálculo da mediana
median(datfx)
# Cálculo da moda
table(datfx) ; subset(table(datfx), table(datfx)==max(table(datfx)))
# Cálculo da máximo e mínimo
max(datfx)   ; min(datfx)


# ---------------Medidas de Dispersão------------------------------

range(datfx)
diff(range(datfx))
amplitude = max(datfx) - min(datfx) ; amplitude

var(datfx)
sd(datfx)

CV = sd(datfx) / mean(datfx)*100 ; CV

descritiva = rbind(Média = mean(datfx),
                   Mediana = median(datfx),
                   Máximo=max(datfx),
                   Mínimo=min(datfx),
                   Amplitude=amplitude,
                   Variância=var(datfx),
                   "Desvio-padrão"=sd(datfx),
                   "CV(%)"=CV)

colnames(descritiva) = 'Estatísticas'
descritiva

################################################################################
################################################################################
################################################################################
################################################################################
################################################################################

# ----------------------------
## Distribui��o de Frequ�ncia
# ----------------------------

rm(list = ls()) ## Limpar variaveis

## Valores Pontuais 

## Exemplo 1.

# 8.5  7.5  9.0  7.5  5.5  9.5  10  8.5  6.0  6.0  6.5  4.5  10  6.5  9.0  6.5

Notas <- scan()  ## copiar/colar os dados acima.

## ou definir direto no dataframe

Notas1 <- c (8.5, 7.5, 9.0, 7.5, 5.5, 9.5, 10, 8.5,
             6.0, 6.0, 6.5, 4.5, 10, 6.5, 9.0, 6.5)

Freq <- table (Notas)
FreqAc <- cumsum(Freq)
FreqRel <- prop.table (Freq)
FreqRelAc <- cumsum (FreqRel)


TabResul <- cbind (Freq,
                   FreqAc,
                   FreqRel = round (FreqRel*100, digits = 2),
                   FreqRelAc = round (FreqRelAc*100, digits =2))
TabResul

## Exemplo 2. 


## Lendo do arquivo .csv 

rm(list = ls())

setwd("C:\\P&E 2024") 
# ou no Rstudio-Session-Set Working Directory-Choose Directory

Estadoc <- read.csv("Estadocivil.csv", header = TRUE,
                    sep = ",", dec = ".")

str(Estadoc)

# Outra op��o ...
# Importando dados pelo RStudio --> File  Import Dataset From Text(base)

Estadoc <- Estadocivil

# Outra op�ao ... Ler da area de transferencia do Windows

rm(list = ls())

Estadoc <- read.table(file = "clipboard", sep = "\t", header=TRUE, dec=",")

## Observar o dataframe criado.

# outra alternativa ... Ler arquivo Excel

rm(list = ls())
install.packages("readxl")
library("readxl")

Estadoc <- read_excel("EstadocivilExcel.xlsx")


# Mais outra alternativa ... Lendo atraves da Tela 

Estadoc <- scan(what = "character")

Freq <- table (Estadoc)
FreqAc <- cumsum(Freq)
FreqRel <- prop.table (Freq)
FreqRelAc <- cumsum (FreqRel)
TabResul = cbind (Freq,
                  FreqAc,
                  FreqRel = round (FreqRel*100, digits = 2),
                  FreqRelAc = round (FreqRelAc*100, digits =2))
TabResul

bar_pos <- barplot(Freq, 
                   col = c ("Yellow", "Orange", "Green", "Blue"), 
                   main = "Distribui��o do Estado Civil",
                   xlab = "Estado Civil",
                   ylab = "Quantidade", 
                   ylim = c(0, max(Freq) + 6)) # Adicionando r�tulos aos valores

# colocando valores das frequencias no gr�fico
text(x = bar_pos, 
     y = Freq, 
     labels = Freq, 
     pos = 3,        # pos = 3 significa acima das barras
     cex = 0.8,      # Tamanho do texto
     col = "black")  # Cor do texto 

# ------------------
# Gr�fico de pizza

# Cores para as fatias

cores <- rainbow(length(Freq)) 

cores <- c ("Yellow","Orange","Green","Blue") # ou definir as cores

pie(Freq, col = cores, 
    main = "Gr�fico de Pizza - Estado Civil")

# ------------------
## Valores Agrupados
# ------------------

## Exemplo 1 - Bicicletas

rm(list = ls())

setwd("C:\\P&E 2024")

Producao <- read.csv("Bicicleta.csv", header = TRUE,
                     sep = ",", dec = ".")
str(Producao)

hist(Producao$Bike) # Histograma

# Valores do objeto Histograma

Reshist <- hist(Producao$Bike)
Reshist

# Agrupando os valores em Classes 

range(Producao$Bike)

Amplitude = diff (range(Producao$Bike))

Nclasses <- nclass.Sturges(Producao$Bike)

AmpClasse <- round (Amplitude / Nclasses)

limitesclas <- seq (230 , 370 , AmpClasse )

classes<-c("230 |- 250","250 |- 270","270 |- 290","290 |- 310",
           "310 |- 330","330 |- 350","350 |- 370")

Freq = table(cut(Producao$Bike, breaks = limitesclas, right=FALSE, 
                 labels=classes))

FreqAc <- cumsum(Freq); 
FreqRel <- prop.table(Freq); 
FreqRelAc <- cumsum(FreqRel)

TabResul = cbind(Freq,
                 FreqAc, 
                 FreqRel = round(FreqRel*100,digits = 2),
                 FreqRelAc= round(FreqRelAc*100,digits = 2))
TabResul

h = hist(Producao$Bike, breaks=limitesclas,
         ylab="Frequencias absolutas", 
         xlab= "Bicicletas Produzidas",labels=classes,
         main="Histograma", col="orange", 
         xlim=c(220,380), ylim = c (0, max(Freq) + 5))

lines(c(min(h$breaks), h$mids, max(h$breaks)), 
      c(0,h$counts, 0), type = "l")

boxplot(Producao, col = "red")

boxplot(Producao, col = "Orange", varwidth = TRUE, notch = TRUE) 


## Exemplo 2 - IMC

setwd("C:\\P&E 2024")

IMC <- read.csv("IMCvalores.csv", header = TRUE,
                sep = ";", dec = ",")

attach(IMC)

hist(IMCplan)

Reshist <- hist(IMCplan)
Reshist

Amplitude <- diff( range(IMCplan)) 

Nclasses <- nclass.Sturges(IMCplan)

AmpClasse <- round (Amplitude / Nclasses)
range(IMCplan)

limitesclas <- seq( 15.68, 33.68, AmpClasse )

classes<-c("15.68 |- 18.68", "18.68 |- 21.68", "21.68 |- 24.68", "24.68 |- 27.68",
           "27.68 |- 30.68", "30.68 |- 33.68")

Freq = table(cut(IMCplan, breaks = limitesclas, right=FALSE, labels=classes))
FreqAc <- cumsum(Freq)
FreqRel <- prop.table(Freq)
FreqRelAc <- cumsum(FreqRel)

TabResul = cbind(Freq,FreqAc,FreqRel=round(FreqRel*100,digits = 2),
                 FreqRelAc= round(FreqRelAc*100,digits = 2))
TabResul

h = hist(IMCplan, breaks = limitesclas, labels = classes,
         col="orange", xlim=c(15, 35), ylim = c (0,10),
         ylab="Frequencias absolutas", main="Histograma")


lines(c(min(h$breaks), h$mids, max(h$breaks)), 
      c(0,h$counts, 0), type = "l")

boxplot(IMC, col = "red")

boxplot(IMC,  col = "orange", varwidth = TRUE, notch = TRUE)


## ---Exemplo 3. IMC com CLASSES DESIGUAIS ---------------------------

setwd("C:\\P&E 2024")

IMC <- read.table ("IMCvalores.csv", header = TRUE, sep = ";" , dec=",")

limitesclas <- c(14, 18.4, 24.9, 29.9, 40)

classes<-c(" Abaixo [14,0 |-- 18,4)", " Normal [18,4 |-- 24,9)", 
           " Acima  [24,9 |-- 29,9)", " Obeso  [29,9 |-- 40,0)")

Freq = table(cut(IMC$IMCplan, breaks = limitesclas, right=FALSE,
                 labels=classes, include.lowest = TRUE))

FreqRel <- prop.table(Freq)
FreqAc <- cumsum(Freq)
FreqRelAc <- cumsum(FreqRel)
difclas <- diff(limitesclas)

TabResul = cbind(Freq,FreqRel = round(FreqRel*100,digits = 2), 
                 FreqAc = round(FreqAc ,digits = 2),
                 FreqRelAc = round(FreqRelAc*100,digits = 2),
                 difclas, densidade = round(FreqRel/difclas,digits = 4))
TabResul

hist(IMC$IMCplan, breaks = limitesclas, labels = classes, col="green",
     xlim=c(15, 40), ylim = c (0,0.10),  
     xlab = "IMCs", main="Histograma - IMC ")

# --- Exemplo 4 -  usando os QUARTIS COMO CLASSES -----------------------

setwd("C:\\P&E 2024")

IMC <- read.table ("IMCvalores.csv", header = TRUE, sep = ";" , dec=",")

limitesclas <- quantile(round(IMC$IMCplan, digits = 4))

classes<-c(" 0 a 25 % "," 25 a 50 %)"," 50 a 75 % "," 75 a 100 %")

Freq.IMC.cut <- table( cut (IMC$IMCplan, breaks = limitesclas, 
                            right = FALSE, include.lowest = TRUE))  

FreqAc <- cumsum(Freq.IMC.cut)
FreqRel <- prop.table(Freq.IMC.cut)
difclas <- diff(limitesclas)
TabResul = cbind(Freq.IMC.cut, FreqAc, 
                 FreqRel = round(FreqRel,digits = 2),difclas,
                 densidade= round(FreqRel/difclas,digits = 4))
TabResul

h = hist(IMC$IMCplan, breaks = quantile(IMC$IMCplan), 
         col="orange", main="Histograma", xlim=c(15, 35),
         ylim = c (0,0.14), labels = classes, xlab = "IMC")


# --- Exemplo 4.1 -  usando os QUARTIS COMO CLASSES -----------------------
# incluindo labels para as classes 

setwd("C:\\P&E 2024")

IMC <- read.table ("IMCvalores.csv", header = TRUE, sep = ";" , dec=",")

limitesclas <- quantile(IMC$IMCplan)

classes<-c(" At� Q1", " Entre (Q1 e Q2)", 
           " Entre (Q2 e Q3)", " Supeior a Q3")
Freq.IMC.cut <- table( cut (IMC$IMCplan, breaks = limitesclas, right = FALSE,
                            labels = classes,include.lowest = TRUE))  

FreqAc <- cumsum(Freq.IMC.cut)
FreqRel <- prop.table(Freq.IMC.cut)
difclas <- diff(limitesclas)
TabResul = cbind(Freq.IMC.cut, FreqAc, 
                 FreqRel = round(FreqRel,digits = 2),difclas,
                 densidade= round(FreqRel/difclas,digits = 4))
TabResul

h = hist(IMC$IMCplan, breaks = quantile(IMC$IMCplan), labels = classes, 
         col="orange", main="Histograma", xlim=c(15, 35),
         ylim = c (0,0.14), xlab = "IMC")

# ------------------------------------------------------------
# Utilizando o histograma 
#
altura = c(1.30, 1.33, 1.40, 1.42, 1.45, 1.50, 1.50, 1.52, 1.55,
           1.56, 1.58, 1.60, 1.62, 1.64, 1.65, 1.67, 1.68, 1.68,
           1.70, 1.72, 1.72, 1.74, 1.80, 1.83, 1.85)

h <- hist(altura, labels = TRUE)

h <- hist(altura, freq = FALSE, labels = TRUE) 
h

par(mfrow = c (1,2))

h <- hist(altura, breaks = c (1.3, 1.5, 1.7, 1.9))


h <- hist(altura, breaks = c (1.3, 1.5, 1.7, 1.8, 1.9))

h <- hist(altura, breaks = c (1.3, 1.5, 1.7, 1.9), 
          col = c("violet", "yellow" , "Orange" ),
          labels = TRUE, ylim = c (0,20))

hist(altura, breaks = c (1.3, 1.5, 1.6, 1.8, 1.9), 
     col= c("violet"))

par (mfrow = c (1,1))

h <- hist(altura,  
          main = "Altura dos alunos do Ensino M�dio", 
          xlab = "Altura dos alunos", ylab = "Freq. Absoluta", 
          col = c("violet"), border = FALSE, 
          xlim = c(1.2,2), ylim = c(0,9),
          labels = TRUE)

lines(c(min(h$breaks), h$mids, max(h$breaks)), 
      c(0,h$counts, 0), type = "l")


limitesclas <- seq( 1.30, 1.90, 0.1 )

classes<-c("1.30 |- 1.40", "1.40 |- 1.50", "1.50 |- 1.60", "1.60 |- 1.70",
           "1,70 |- 1.80", "1.80 |- 1.90")

Freq = table(cut(altura, breaks = limitesclas, right=FALSE, labels=classes))
FreqAc <- cumsum(Freq)
FreqRel <- prop.table(Freq)
FreqRelAc <- cumsum(FreqRel)

TabResul = cbind(Freq,FreqAc,FreqRel=round(FreqRel*100,digits = 2),
                 FreqRelAc= round(FreqRelAc*100,digits = 2))
TabResul

h <- hist(altura,  
          main = "Altura dos alunos do 1? ano do Ensino M?dio", 
          xlab = "Altura dos alunos", ylab = "Freq. Absoluta", 
          col = c("violet"), border = FALSE, 
          xlim = c(1.3,1.9), ylim = c(0,9),
          labels = TRUE)

lines(c(min(h$breaks), h$mids, max(h$breaks)), 
      c(0,h$counts, 0), type = "l", col = ("red"))

################################################################################
################################################################################
################################################################################
################################################################################
################################################################################

rm(list = ls()) ## Limpar memoria

## pasta a ser utilizada 

setwd("C:\\P&E 2024")

milsa <- read.table("TabelaLivro.csv", header = TRUE, sep = ";", dec = ".")

milsa
str(milsa) 

# a) Variavel Qualitativa Nominal

# Frequencia absoluta

civil.tb <- table(milsa$Est.civil)
civil.tb
## Frequencia relativa

prop.table(civil.tb)

# GRAFICO DE Barras
barplot(civil.tb)

barplot(civil.tb, cex.names=1.25, col=c("green","blue"),
        ylab="Número de Funcionários", 
        xlab="Estado civil", cex.axis=1.25,
        main="Proporção entre casados e solteiros",
        cex.lab=0.85,bty="n", ylim=c(0,25))

# GRAFICO DE PIZZA

?pie 

labs<-paste(c("Casados = ", "Solteiros = "),
            round(civil.tb/length(milsa$Est.civil)*100, 
                  digits=2), "%")

pie(civil.tb,labels=labs,col=c("green", "blue"),
    main="Proporção entre casados e solteiros")

#Plotando legenda no canto superior direito

legend("topright", pch=15, col=c("green","blue"), 
       legend=c("Casados", "Solteiros"), 
       cex=1.0, bty="n")

## b) Variavel Qualitativa Ordinal 

## Frequencia absoluta

inst.tb <- table(milsa$Inst)

## Frequencia relativa
prop.table(inst.tb)

## Grafico de Barras

barplot(sort(inst.tb,decreasing = FALSE),
        cex.names=1.15, 
        col=c("green", "blue", "red"),
        ylab="Instrução de Funcionários", 
        xlab="Escolaridade", cex.axis=1.05,
        main="Escolaridade dos Funcionários",
        cex.lab=0.85,bty="n", ylim=c(0,20))

barplot(sort(inst.tb,decreasing = TRUE),
        cex.names=1.15, 
        col=c("green", "blue", "red"),
        ylab="Instrução de Funcionários", 
        xlab="Escolaridade", cex.axis=1.25,
        main="Escolaridade dos Funcionários",
        cex.lab=0.85,bty="n", ylim=c(0,20))

## c) Variavel quantitativa discreta

## Frequencia absoluta

filhos.tb <- table(milsa$Filhos)
milsa$Filhos

plot(filhos.tb, col =  "green", type = "h",
     lwd = 5, cex.lab=1.2,
     main = " Frequencia Absoluta ",
     xlab= "Numero de filhos",
     ylab= "Quantidade de Filhos ") 

plot(filhos.tb, type = "S",col = "red",
     main = "Frequencia relativa acumulada",
     lwd = 5 )

?plot

## Frequencia relativa
filhos.tbr <- prop.table(filhos.tb)

## Frequencia absoluta e relativa acumulada
filhos.tbra <- cumsum(filhos.tbr)
filhos.tba <- cumsum(filhos.tb)

filhosTabResul = cbind(filhos.tb,filhos.tba,
                       filhos.tbr = round(filhos.tbr*100,digits = 2),
                       filhos.tbra= round(filhos.tbra*100,digits = 2))
filhosTabResul

## d) Variavel quantitativa Continua

Salario.tb <- (milsa$Salario)
sort (Salario.tb)
Amplitude <- diff(range(Salario.tb))
NK <-  nclass.Sturges (Salario.tb)
AmpClasse <- round(Amplitude / NK , digits = 1)
limitesclas <- seq (4 , 23.60 , AmpClasse )

classes<-c("04.0 |- 06.8","06.8 |- 09.6","09.6 |- 12.4","12.4 |- 15.2",
           "15.2 |- 18.0","18.0 |- 20.8","20.8 |- 23.6")

Freq = table(cut(Salario.tb, breaks = limitesclas, right=FALSE, 
                 include.lowest = TRUE, labels=classes))

#Freq = table(cut(Salario.tb, breaks = limitesclas, right=FALSE, labels=classes))

FreqAc <- cumsum(Freq); FreqRel <- prop.table(Freq); FreqRelAc <- cumsum(FreqRel)

TabResul = cbind(Freq,FreqAc, FreqRel = round(FreqRel*100,digits = 2),
                 FreqRelAc= round(FreqRelAc*100,digits = 2))
TabResul

# retirar labels e observar os intervalos
Freq = table(cut(Salario.tb, breaks = limitesclas, right=FALSE)) 

FreqAc <- cumsum(Freq); FreqRel <- prop.table(Freq); FreqRelAc <- cumsum(FreqRel)

TabResul = cbind(Freq,FreqAc, FreqRel = round(FreqRel*100,digits = 2),
                 FreqRelAc= round(FreqRelAc*100,digits = 2))
TabResul

h = hist(Salario.tb, breaks=limitesclas,
         ylab="Frequencias absolutas",  labels=classes,main="Histograma", 
         xlim=c(4,25), ylim = c (0,16), col="orange")

lines(c(min(h$breaks), h$mids, max(h$breaks)), 
      c(0,h$counts, 0), type = "l")

## Para variaveis numericas ...

## Mediana
median(milsa$Salario)
## Media
mean(milsa$Salario)
## Quartis
quantile(milsa$Salario)
## Amplitude - diferenca entre maximo e minimo
diff(range(milsa$Salario))
## Variancia
var(milsa$Salario)
## Desvio-padrao
sd(milsa$Salario)
## Coeficiente de variacao
sd(milsa$Salario)/mean(milsa$Salario)
## Quartis
(Salario.qt <- quantile(milsa$Salario))
## Summary() para resumir os dados de uma s? vez
summary(milsa$Salario)

boxplot(milsa$Salario)

boxplot(milsa$Salario,  col = "orange", 
        varwidth = TRUE, notch = TRUE)


#----------------------------- ANALISE BIVARIADA ----------------------------

#a) ------ Variavel Qualitativa X Variavel Qualitativa --------------


inst.civ.tb <- with(milsa,table(Instrucao, Est.civil))
inst.civ.tb

civ.inst.tb <- with(milsa,table(Est.civil, Instrucao))
addmargins(civ.inst.tb)

prop.table(civ.inst.tb)
addmargins(prop.table(civ.inst.tb))

prop.table(civ.inst.tb, margin = 1)

prop.table(civ.inst.tb, margin = 2)

# Estado civil x instrucao 

barplot(civ.inst.tb, main = "Estado Civil x Instrucao",
        col= c("green","blue"), beside = TRUE,
        legend = TRUE,  args.legend = list(x = "topright",
                                           bty = "y",ncol = 1))

#  instrucao X Estado civil

barplot(inst.civ.tb, main = "Instrucao x Estado civil",
        col= c("green","blue", "yellow"),
        beside = TRUE,legend = TRUE, 
        args.legend = list(x = "topright",
                           bty = "n", ncol = 1))

#  instrucao X Estado civil na Horizontal 

barplot(inst.civ.tb, main= "Instrucao x Estado civil",
        col= c("green","blue", "yellow"),
        beside = TRUE,legend = TRUE, 
        args.legend = list(x = "topright", bty = "n",
                           ncol = 1), horiz = TRUE)

#  instrucao X Estado civil Agrupado --> beside = FALSE 

barplot(inst.civ.tb, main = "Instrucao x Estado civil",
        col= c("green","blue", "yellow"),legend = TRUE,
        beside = TRUE, 
        args.legend = list(x = "topright",bty = "n",
                           inset=c(-0.1, 1.60), ncol = 3), ylim = c (0,15))


# b) Qualitativa vs quantitativa (variaveis Instrucao e Salario) --------

## Quartis de salario

quantile(milsa$Salario)

## Classificacao de acordo com os quartis

salario.cut <- cut(milsa$Salario, breaks =  quantile(milsa$Salario),      
                   include.lowest = TRUE, right = FALSE)

## Tabela de frequencias absolutas
inst.sal.tb <- table(milsa$Instrucao, salario.cut)
inst.sal.tb

barplot(inst.sal.tb, col=c("yellow","red","orange"),
        main= "Salario x Instrucao",
        xlab = "Quantiles", ylab = "Frequencia  Instrucao",
        beside = TRUE, legend = TRUE, 
        args.legend = list(x = "topright",bty = "n",
                           ncol = 1))

boxplot(Salario ~ Instrucao, data = milsa, 
        col=c("yellow", "red", "orange"))  

prop.table(inst.sal.tb)

#c) -- Quantitativa vs Quantitativa (considerar as variaveis Salario e Idade)

Anos.cut <- cut(milsa$Anos, breaks = quantile(milsa$Anos),
                right = FALSE , include.lowest = TRUE)

salario.cut <- cut(milsa$Salario, breaks = quantile(milsa$Salario),
                   right = FALSE, include.lowest = TRUE)
## Tabela cruzada

Anos.sal.tb <- table(Anos.cut, salario.cut)
Anos.sal.tb

## Calculo da Correlacao

cor (milsa$Anos, milsa$Salario) # correlacao

plot(milsa$Anos, milsa$Salario)

plot(x = milsa$Anos, y = milsa$Salario,
     main = " Salario x Anos",
     xlab = "Anos - Variavel preditora", 
     ylab = "Salario - Variavel resposta",
     col = "blue", cex.axis = 0.75, 
     xlim = c(20, 50), ylim = c(0, 25))

abline(lsfit(milsa$Anos, milsa$Salario),col="darkred")

################################################################################
################################################################################
################################################################################
################################################################################
################################################################################

# Media Harmonica e Geometrica

x <- c(45, 36)
mh <- length(x) / sum(1 / x)
print(paste("Média Harmônica:", mh))

x <- c(50, 60)
mh <- length(x) / sum(1 / x)
print(paste("Média Harmônica:", round(mh,4))) 


# Média geométrica

x <- c(10, 60, 360)
media_geometrica <- prod(x)^(1 / length(x))
print(paste("Média Geométrica:", media_geometrica))

x <- c(1, 3, 9, 27)
f <- c(2, 4, 2, 1 )
mg <- (prod(x ^ f)) ^ (1 / sum(f))
print(paste("Média Geométrica:", round(mg,4)))

# --------------- Moda------------------------ 
dfx <- c( 2, 7, 8, 9 , 5, 10 , 22, 14, 14, 12)
freq_dfx <- (table(dfx))
freq_dfx [freq_dfx == max(freq_dfx)]

# -----------Multimodal ----------------------
dfx <- c( 2, 7, 8, 9 , 8, 10 , 2, 14, 14, 12)
freq_dfx <- (table(dfx))
freq_dfx [freq_dfx == max(freq_dfx)]

# ------------ Amodal-----------------------

dfx <- c( 2, 7, 8, 9 , 5, 10 , 22, 14, 15, 12)
freq_dfx <- (table(dfx))
freq_dfx [freq_dfx == max(freq_dfx)]

# ------------ Moda -------------------------
dfx <- c( 2, 7, 8, 9 , 5, 10 , 22, 14, 15, 22)
freqdfx <- (table(dfx))
subset (freqdfx, freqdfx == max(freqdfx))

# -------------Multimodal--------------------
dfx <- c( 2, 7, 8, 9 , 8, 10 , 14, 14, 10, 22)
freqdfx <- (table(dfx))
subset (freqdfx, freqdfx == max(freqdfx))

# ------------ Amodal-------------------------
dfx <- c( 2, 7, 8, 9 , 5, 10 , 22, 14, 15, 12)
freqdfx <- (table(dfx))
subset (freqdfx, freqdfx == max(freqdfx))

# ---------------Desvio Padrão ------------------------

x <- c(10,12,14,16,18)
var(x) ; sd(x)

# ----------- Coeficiente de Variação ------------

#hoteis <- read.csv(file ="C:/P&E 2024/Hoteis.csv",
#                  sep = ";", dec = ".", header = TRUE,
#                  fileEncoding = "UTF-8")

Meses <- c("Jan","Fev","Mar","Abr","Mai","Jun", "Jul","Ago","Set")
Hotel.A <- c(760, 690, 380, 280, 320, 300, 710, 270, 360)
Hotel.B <- c(420, 450, 510, 460, 470, 440, 480, 430, 410)

hoteis <- data.frame (Meses, Hotel.A, Hotel.B)

str(hoteis)

mean(hoteis$Hotel.A); mean(hoteis$Hotel.B)
var(hoteis$Hotel.A); var(hoteis$Hotel.B)
sd(hoteis$Hotel.A); sd(hoteis$Hotel.B)

sd(hoteis$Hotel.A)/mean(hoteis$Hotel.A) * 100
sd(hoteis$Hotel.B)/mean(hoteis$Hotel.B) * 100


# ---------------- Assimetria ---------------------

install.packages("e1071")
library(e1071)

Asspp <- c( 3,4,5,5,6,6,6,6,6,6,6,7,7,8,9)

h = hist(Asspp)

assimetria <- skewness(Asspp)
assimetria

Asserq <- c( 2,6,7,8,8,17,18,16,11,11,
             13,14,16,17,15,17,20,21,22)

h = hist(Asserq,main="Histograma Assimétrico à Esquerda")

assimetria <- skewness(Asserq)
assimetria

mean(Asserq)
median(Asserq)
Ap2 = (mean(Asserq) - median(Asserq)) / sd(Asserq)
Ap2

assimetria <- skewness(Asserq)
assimetria

boxplot(Asserq, horizontal = TRUE)

Assdir <- c(2,4,5,6,7,8,8,9,9,10,10,10,
            11,12,13,13,15,19,20,22)

h = hist(Assdir,main="Histograma Assimétrico à Direita")

mean(Assdir)
median(Assdir)

Ap2 = (mean(Assdir) - median(Assdir)) / sd(Assdir)
Ap2

assimetria <- skewness(Assdir)
assimetria

boxplot(Assdir, horizontal = TRUE)


# Assimetria  ... outros exemplos 

set.seed(123)  
dados <- c(rnorm(100, mean = 5, sd = 1))
h = hist(dados)

mean(dados)
median(dados)
Ap2 = (mean(dados) - median(dados)) / sd(dados)
Ap2
assimetria <- skewness(dados)
assimetria


dados <- rnorm(1000, mean = 7.5, sd = 2.5)
h = hist(dados)

mean(dados)
median(dados)
Ap2 = (mean(dados) - median(dados)) / sd(dados)
Ap2
assimetria <- skewness(dados)
assimetria


# -------------Outras Assimetrias ----------------

# Gerar n notas aleatórias 

numnotas = scan()

dados <- runif(numnotas, min = 4, max = 10)

hist(dados)

# Calcular média, mediana e desvio padrão
media <- mean(dados)
mediana <- median(dados)
desvio_padrao <- sd(dados)

# Calcular os quartis
Q1 <- quantile(dados, 0.25)
Q2 <- quantile(dados, 0.50)
Q3 <- quantile(dados, 0.75)

# Coef. Assimetria de Pearson (Primeira Fórmula)
assimetria_pearson1 <- (media - mediana) / desvio_padrao

# Coef. Assimetria de Pearson (Segunda Fórmula)
assimetria_pearson2 <- 3 * (media - mediana) / desvio_padrao

# Coef. Assimetria de Bowley
assimetria_bowley <- (Q3 + Q1 - 2 * Q2) / (Q3 - Q1)

# Coef. Assimetria usando a função skewness() do pacote e1071
assimetria_e1071 <- skewness(dados)

# Exibindo os resultados

print(paste("Coef. Assimetria de Pearson (Primeira Fórmula):", assimetria_pearson1))
print(paste("Coef. Assimetria de Pearson (Segunda Fórmula):", assimetria_pearson2))
print(paste("Coef. Assimetria de Bowley:", assimetria_bowley))
print(paste("Coef. Assimetria calculado pelo pacote e1071:", assimetria_e1071))

#################################################################################################
##############################################AB1################################################
#################################################################################################

#################################################################################################
##############################################AB2################################################
#################################################################################################

# Questão 1:
# O volume de correspondência recebido por uma firma quinzenalmente tem distribuição normal com média de 4.000 cartas e desvio padrão de 200 cartas.
# a) Qual a porcentagem de quinzenas em que a firma recebe entre 3.600 e 4.250 cartas?
# b) Qual a porcentagem de quinzenas em que a firma recebe menos de 3.400 cartas?
# c) Qual a porcentagem de quinzenas em que a firma recebe mais de 4.636 cartas?

# Parâmetros
media <- 4000  # média de cartas recebidas
desvio_padrao <- 200  # desvio padrão de cartas

# a) P(3600 < X < 4250)
p_a <- pnorm(4250, mean = media, sd = desvio_padrao) - pnorm(3600, mean = media, sd = desvio_padrao)

# b) P(X < 3400)
p_b <- pnorm(3400, mean = media, sd = desvio_padrao)

# c) P(X > 4636)
p_c <- 1 - pnorm(4636, mean = media, sd = desvio_padrao)

# Resultados
cat("a) P(3600 < X < 4250):", p_a * 100, "%\n")
cat("b) P(X < 3400):", p_b * 100, "%\n")
cat("c) P(X > 4636):", p_c * 100, "%\n")


desvio_padrao <- 10  # desvio padrão

# a) P(X < 990)
p_a <- pnorm(990, mean = media, sd = desvio_padrao)

# b) P(|X - 1000| <= 2 * desvio_padrao)
p_b <- pnorm(media + 2 * desvio_padrao, mean = media, sd = desvio_padrao) - pnorm(media - 2 * desvio_padrao, mean = media, sd = desvio_padrao)

# c) Probabilidade de no máximo 4 de 10 garrafas terem volume superior a 1002
p_sucesso <- 1 - pnorm(1002, mean = media, sd = desvio_padrao)
p_c <- pbinom(4, size = 10, prob = p_sucesso)

# Resultados
cat("a) P(X < 990):", p_a * 100, "%\n")
cat("b) P(|X - 1000| <= 2 * desvio_padrao):", p_b * 100, "%\n")
cat("c) P(no máximo 4 garrafas > 1002 cm³):", p_c * 100, "%\n")

# Questão 3:
# Em um teste de aptidão, o tempo para completar o teste segue uma distribuição normal com média de 45 minutos e desvio padrão de 20 minutos. 
# A amostra é de 50 candidatos.
# a) Qual a probabilidade de um candidato ter um tempo superior a 50 minutos ou inferior a 30 minutos?
# b) Quantos candidatos, aproximadamente, têm tal perfil?

# Parâmetros
media <- 45  # tempo médio
desvio_padrao <- 20  # desvio padrão
n <- 50  # número de candidatos

# a) P(X > 50 ou X < 30)
p_a <- (1 - pnorm(50, mean = media, sd = desvio_padrao)) + pnorm(30, mean = media, sd = desvio_padrao)

# b) Número de candidatos com esse perfil
num_candidatos <- p_a * n

# Resultados
cat("a) P(X > 50 ou X < 30):", p_a * 100, "%\n")
cat("b) Número de candidatos:", round(num_candidatos), "\n")

# Questão 4:
# Uma máquina produz discos com diâmetro médio de 2 cm e desvio padrão de 0,01 cm. As peças que se afastam mais de 0,03 cm do valor médio são consideradas defeituosas.
# Qual a porcentagem de peças defeituosas?

# Parâmetros
media <- 2  # diâmetro médio dos discos
desvio_padrao <- 0.01  # desvio padrão dos discos

# Peças defeituosas são aquelas com diâmetro fora do intervalo (1.97, 2.03)
p_defeito <- pnorm(1.97, mean = media, sd = desvio_padrao) + (1 - pnorm(2.03, mean = media, sd = desvio_padrao))

# Resultado
cat("Percentual de peças defeituosas:", p_defeito * 100, "%\n")

# Questão 5:
# A vida média de uma televisão é de 8 anos com desvio padrão de 1,8 anos. Qual deve ser o tempo de garantia para que no máximo 5% dos produtos precisem de troca?

# Parâmetros
media <- 8  # vida média da televisão
desvio_padrao <- 1.8  # desvio padrão

# Garantia para no máximo 5% de trocas
tempo_garantia <- qnorm(0.05, mean = media, sd = desvio_padrao)

# Resultado
cat("Tempo de garantia para no máximo 5% de trocas:", tempo_garantia, "anos\n")

# Questão 6:
# O tempo médio de atendimento em um caixa de banco é de 5 minutos, com distribuição exponencial.
# a) Qual a probabilidade de um cliente esperar mais de 5 minutos?
# b) Qual a probabilidade de um cliente esperar menos de 4 minutos?
# c) Qual a probabilidade de um cliente esperar entre 3 e 8 minutos?

# Parâmetros
media <- 5  # tempo médio de atendimento

# a) P(X > 5)
p_a <- 1 - pexp(5, rate = 1/media)

# b) P(X < 4)
p_b <- pexp(4, rate = 1/media)

# c) P(3 < X < 8)
p_c <- pexp(8, rate = 1/media) - pexp(3, rate = 1/media)

# Resultados
cat("a) P(X > 5):", p_a * 100, "%\n")
cat("b) P(X < 4):", p_b * 100, "%\n")
cat("c) P(3 < X < 8):", p_c * 100, "%\n")

# Questão 7:
# O tempo médio de uma cirurgia de reconstrução ACL é de 129 minutos com desvio padrão de 14 minutos.
# a) Qual é a probabilidade de uma cirurgia durar mais de dois desvios padrão acima da média?
# b) Qual a probabilidade de uma cirurgia ser concluída em menos de 100 minutos?
# c) Qual é o tempo que garante que 95% das cirurgias sejam completadas em menos tempo?
# d) Se uma cirurgia demora 199 minutos, o que isso sugere sobre a demanda desse hospital?

# Parâmetros
media <- 129  # tempo médio da cirurgia
desvio_padrao <- 14  # desvio padrão

# a) P(X > media + 2 * desvio_padrao)
p_a <- 1 - pnorm(media + 2 * desvio_padrao, mean = media, sd = desvio_padrao)

# b) P(X < 100)
p_b <- pnorm(100, mean = media, sd = desvio_padrao)

# c) Tempo para P(X <= T) = 0.95
tempo_95 <- qnorm(0.95, mean = media, sd = desvio_padrao)

# Resultados
cat("a) P(X > media + 2 * desvio_padrao):", p_a * 100, "%\n")
cat("b) P(X < 100):", p_b * 100, "%\

# Questão 8:
# Um fabricante de baterias sabe que a vida útil de suas baterias segue uma distribuição normal com média de 600 dias e desvio padrão de 100 dias. 
# Ele oferece uma garantia de 312 dias. A fábrica produz 10.000 baterias por mês. Quantas baterias devem ser trocadas mensalmente devido à garantia?

# Parâmetros
media <- 600  # vida útil média das baterias em dias
desvio_padrao <- 100  # desvio padrão em dias
garantia <- 312  # período de garantia oferecido
n_baterias <- 10000  # número de baterias fabricadas mensalmente

# Calculamos a probabilidade de uma bateria falhar antes de 312 dias, ou seja, P(X < 312)
p_troca <- pnorm(garantia, mean = media, sd = desvio_padrao)

# Multiplicamos a probabilidade pela quantidade de baterias fabricadas para estimar quantas baterias serão trocadas
n_trocas <- p_troca * n_baterias

# Resultado
cat("Número estimado de baterias a serem trocadas:", round(n_trocas), "\n")

# Questão 9:
# Sabe-se que os pacotes de queijo ralado vendidos no supermercado possuem uma distribuição normal com média de 100 g e desvio padrão de 10 g. 
# a) Qual a probabilidade de encontrar um pacote com peso entre 95 g e 105 g?
# b) Se 16 pacotes são escolhidos ao acaso, qual é a probabilidade de o peso médio desses pacotes estar entre 95 g e 105 g?

# Parâmetros
media <- 100  # peso médio em gramas
desvio_padrao <- 10  # desvio padrão em gramas
n <- 16  # número de pacotes

# a) Probabilidade de encontrar um pacote com peso entre 95 g e 105 g
p_a <- pnorm(105, mean = media, sd = desvio_padrao) - pnorm(95, mean = media, sd = desvio_padrao)

# b) Probabilidade de a média dos pesos de 16 pacotes estar entre 95 g e 105 g
desvio_padrao_amostra <- desvio_padrao / sqrt(n)  # desvio padrão da média amostral
p_b <- pnorm(105, mean = media, sd = desvio_padrao_amostra) - pnorm(95, mean = media, sd = desvio_padrao_amostra)

# Resultado
cat("a) P(95 < X < 105):", p_a, "\n")
cat("b) P(95 < X_barra < 105) para 16 pacotes:", p_b, "\n")

# Questão 10:
# O tempo até a falha de um conjunto de motores elétricos segue uma distribuição exponencial com uma média de 28.500 horas.
# Qual é a probabilidade de um motor falhar nas primeiras 24.000 horas de funcionamento?

# Parâmetros
media <- 28500  # vida média dos motores em horas

# a) P(X < 24000) - Probabilidade de um motor falhar antes de 24.000 horas
p_a <- pexp(24000, rate = 1/media)

# Resultado
cat("Probabilidade de falhar nas primeiras 24.000 horas:", p_a, "\n")

# Questão 11:
# Considere que o tempo de resposta de um monitor LCD siga uma distribuição exponencial com uma média de 5 milissegundos. 
# a) Qual a probabilidade de o tempo de resposta ser no máximo 10 milissegundos? 
# b) Qual a probabilidade de o tempo de resposta estar entre 5 e 10 milissegundos?

# Parâmetros
media <- 5  # tempo médio de resposta em milissegundos

# a) P(X <= 10) - Probabilidade de o tempo de resposta ser no máximo 10 milissegundos
p_a <- pexp(10, rate = 1/media)

# b) P(5 < X <= 10) - Probabilidade de o tempo de resposta estar entre 5 e 10 milissegundos
p_b <- pexp(10, rate = 1/media) - pexp(5, rate = 1/media)

# Resultados
cat("a) P(X <= 10):", p_a, "\n")
cat("b) P(5 < X <= 10):", p_b, "\n")

# Questão 12:
# Considere uma reação com catalisadores de enzimas que segue uma distribuição exponencial com uma média de 4.000 segundos.
# a) Qual a probabilidade de uma reação durar mais de 2.000 segundos?
# b) Qual a probabilidade de uma reação durar pelo menos 6.000 segundos, sabendo-se que ela já durou 4.000 segundos?

# Parâmetros
media <- 4000  # tempo médio de reação em segundos

# a) P(X > 2000) - Probabilidade de a reação durar mais de 2.000 segundos
p_a <- 1 - pexp(2000, rate = 1/media)

# b) P(X > 6000 | X > 4000) - Probabilidade condicional para a distribuição exponencial
p_b <- 1 - pexp(2000, rate = 1/media)

# Resultados
cat("a) P(X > 2000):", p_a, "\n")
cat("b) P(X > 6000 | X > 4000):", p_b, "\n")

# Questão 13:
# Suponha que os motores de uma fábrica de carros tenham duração normal com média de 150.000 km e desvio padrão de 5.000 km.
# a) Qual a probabilidade de que um motor dure menos de 170.000 km?
# b) Qual a probabilidade de que um motor dure entre 140.000 km e 165.000 km?
# c) Se a fábrica substitui motores com duração inferior à garantia, qual deve ser essa garantia para que no máximo 0,2% dos motores sejam substituídos?

# Parâmetros
media <- 150000  # duração média dos motores em km
desvio_padrao <- 5000  # desvio padrão em km

# a) P(X < 170000) - Probabilidade de o motor durar menos de 170.000 km
p_a <- pnorm(170000, mean = media, sd = desvio_padrao)

# b) P(140000 < X < 165000) - Probabilidade de o motor durar entre 140.000 km e 165.000 km
p_b <- pnorm(165000, mean = media, sd = desvio_padrao) - pnorm(140000, mean = media, sd = desvio_padrao)

# c) Garantia para que no máximo 0,2% dos motores sejam substituídos (P(X < garantia) = 0.002)
garantia <- qnorm(0.002, mean = media, sd = desvio_padrao)

# Resultados
cat("a) P(X < 170000):", p_a, "\n")
cat("b) P(140000 < X < 165000):", p_b, "\n")
cat("c) Garantia para 0,2% de substituições:", round(garantia), "km\n")

# Questão 14:
# Suponha que o peso de uma população de adultos siga uma distribuição normal com média de 75 kg e desvio padrão de 8 kg, 
# enquanto que o peso de praticantes de sumô siga uma distribuição normal com média de 110 kg e desvio padrão de 5 kg. 
# Sete adultos comuns e três praticantes de sumô vão entrar em um elevador com capacidade máxima de 850 kg.
# Qual é a probabilidade de o peso dessas 10 pessoas ultrapassar a capacidade máxima do elevador?

# Parâmetros
media_adultos <- 75  # média de peso de adultos comuns em kg
desvio_padrao_adultos <- 8  # desvio padrão de adultos comuns em kg
n_adultos <- 7  # número de adultos comuns

media_sumo <- 110  # média de peso de praticantes de sumô em kg
desvio_padrao_sumo <- 5  # desvio padrão de praticantes de sumô em kg
n_sumo <- 3  # número de praticantes de sumô

capacidade_elevador <- 850  # capacidade máxima

# Questão 15:
# A capacidade máxima de um elevador é de 500 kg. Se o peso dos usuários segue uma distribuição normal com média de 70 kg e variância de 100 kg²,
# a) Qual é a probabilidade de sete passageiros ultrapassarem o limite de 500 kg?
# b) E seis passageiros?

# Parâmetros
media_pessoa <- 70  # peso médio de cada passageiro em kg
variancia_pessoa <- 100  # variância do peso de cada passageiro
desvio_padrao_pessoa <- sqrt(variancia_pessoa)  # desvio padrão em kg

capacidade_elevador <- 500  # capacidade máxima do elevador

# a) Probabilidade de 7 passageiros ultrapassarem o limite
n_passageiros_7 <- 7  # número de passageiros
media_total_7 <- n_passageiros_7 * media_pessoa  # soma das médias
desvio_padrao_total_7 <- sqrt(n_passageiros_7 * variancia_pessoa)  # desvio padrão total

# Usamos pnorm para calcular P(X > 500), ou seja, 1 - P(X <= 500)
p_7_passageiros <- 1 - pnorm(capacidade_elevador, mean = media_total_7, sd = desvio_padrao_total_7)

# b) Probabilidade de 6 passageiros ultrapassarem o limite
n_passageiros_6 <- 6  # número de passageiros
media_total_6 <- n_passageiros_6 * media_pessoa  # soma das médias
desvio_padrao_total_6 <- sqrt(n_passageiros_6 * variancia_pessoa)  # desvio padrão total

# Usamos pnorm para calcular P(X > 500)
p_6_passageiros <- 1 - pnorm(capacidade_elevador, mean = media_total_6, sd = desvio_padrao_total_6)

# Resultados
cat("a) Probabilidade de 7 passageiros ultrapassarem o limite:", p_7_passageiros, "\n")
cat("b) Probabilidade de 6 passageiros ultrapassarem o limite:", p_6_passageiros, "\n")

# Questão 16:
# O lucro diário de uma corretora de valores é dado por L = 2*LA + 5*LI + 3*LC, onde LA, LI e LC são os lucros diários nos setores de Agricultura, Indústria e Comércio, respectivamente.
# As distribuições de probabilidades dessas variáveis aleatórias são:
# LA ~ N(3, 4), LI ~ N(6, 9) e LC ~ N(4, 16). Supondo independência entre os setores:
# a) Qual é a distribuição normal do lucro dos três setores?
# b) Qual é a probabilidade de o lucro diário ser superior a R$ 50.000,00?

# Parâmetros
media_LA <- 3  # média do lucro no setor de Agricultura
desvio_padrao_LA <- sqrt(4)  # desvio padrão no setor de Agricultura (variância = 4)

media_LI <- 6  # média do lucro no setor de Indústria
desvio_padrao_LI <- sqrt(9)  # desvio padrão no setor de Indústria (variância = 9)

media_LC <- 4  # média do lucro no setor de Comércio
desvio_padrao_LC <- sqrt(16)  # desvio padrão no setor de Comércio (variância = 16)

# a) Distribuição do lucro total L = 2*LA + 5*LI + 3*LC
# A média total é a soma das médias ponderadas pelos coeficientes
media_L <- (2 * media_LA) + (5 * media_LI) + (3 * media_LC)

# O desvio padrão total é a raiz quadrada da soma das variâncias multiplicadas pelos quadrados dos coeficientes
variancia_L <- (2^2 * desvio_padrao_LA^2) + (5^2 * desvio_padrao_LI^2) + (3^2 * desvio_padrao_LC^2)
desvio_padrao_L <- sqrt(variancia_L)

# b) Probabilidade de o lucro diário ser superior a R$ 50.000,00
# Usamos pnorm para calcular P(L > 50) = 1 - P(L <= 50)
p_lucro_maior_50 <- 1 - pnorm(50, mean = media_L, sd = desvio_padrao_L)

# Resultados
cat("a) Média do lucro total:", media_L, "\n")
cat("b) Desvio padrão do lucro total:", desvio_padrao_L, "\n")
cat("c) Probabilidade de lucro superior a R$ 50.000,00:", p_lucro_maior_50, "\n")

# Questão 17:
# O tempo necessário para que uma bactéria do tipo Bacillus Velox se reproduza segue uma distribuição exponencial com média de 10 minutos.
# a) Qual é a probabilidade de essa bactéria se reproduzir em menos de 7 minutos?
# b) Qual é a probabilidade de a bactéria se reproduzir entre 5 e 8 minutos?
# c) Qual é o valor esperado e a variância do tempo de reprodução?

# Parâmetros
media <- 10  # tempo médio de reprodução em minutos

# a) P(X < 7) - Probabilidade de a bactéria se reproduzir em menos de 7 minutos
p_a <- pexp(7, rate = 1/media)

# b) P(5 < X < 8) - Probabilidade de a bactéria se reproduzir entre 5 e 8 minutos
p_b <- pexp(8, rate = 1/media) - pexp(5, rate = 1/media)

# c) Valor esperado e variância da distribuição exponencial
valor_esperado <- media  # valor esperado é a média
variancia <- media^2  # variância é o quadrado da média

# Resultados
cat("a) P(X < 7):", p_a, "\n")
cat("b) P(5 < X < 8):", p_b, "\n")
cat("c) Valor esperado:", valor_esperado, "minutos\n")
cat("d) Variância:", variancia, "minutos^2\n")

# Questão 18:
# As medidas de corrente elétrica em um pedaço de fio seguem uma distribuição normal com média de 10 miliamperes e variância de 4 miliamperes.
# a) Qual é a probabilidade de a medida exceder 13 miliamperes?
# b) Qual é a probabilidade de a corrente estar entre 9 e 11 miliamperes?
# c) Qual o valor para o qual a probabilidade de uma medida de corrente estar abaixo desse valor seja 0,98?

# Parâmetros
media <- 10  # média da corrente em miliamperes
variancia <- 4  # variância em miliamperes²
desvio_padrao <- sqrt(variancia)  # desvio padrão

# a) P(X > 13) - Probabilidade de a corrente elétrica exceder 13 miliamperes
# Usamos pnorm para calcular P(X > 13) = 1 - P(X <= 13)
p_a <- 1 - pnorm(13, mean = media, sd = desvio_padrao)

# b) P(9 < X < 11) - Probabilidade de a corrente estar entre 9 e 11 miliamperes
# Usamos pnorm para calcular P(9 < X < 11) = P(X <= 11) - P(X <= 9)
p_b <- pnorm(11, mean = media, sd = desvio_padrao) - pnorm(9, mean = media, sd = desvio_padrao)

# c) Valor para o qual P(X <= valor) = 0.98
valor_98 <- qnorm(0.98, mean = media, sd = desvio_padrao)

# Resultados
cat("a) P(X > 13):", p_a, "\n")
cat("b) P(9 < X < 11):", p_b, "\n")
cat("c) Valor para o qual P(X <= valor) = 0.98:", valor_98, "\n")
#################################################################################################
##############################################AB2################################################
#################################################################################################

#Script AB2.2

#Estimativa Pontual
x_ep <- c(44.2, 43.9, 44.7, 44.2, 44.0, 43.8, 44.6, 43.1)

mean(x_ep)
var(x_ep)
sd(x_ep)

#Intervalo de Confiança – Variância Conhecida:

#Exemplo 01: Uma máquina produz rolamentos que apresentam desvio padrão de 0,042 polegadas em seu
#diâmetro. Desejando-se conhecer o diâmetro médio dos rolamentos produzidos por esta máquina, extraiu-se
#uma amostra de 100 rolamentos, observando-se uma média igual a 0,824 polegadas. Obter o intervalo com
#0,90 de confiança para o verdadeiro diâmetro médio dos rolamentos.

alfa = 0.10
desvio = 0.042
media = 0.842
n = 100
zc = qnorm(1 - alfa/2, 0, 1)
zc = round(zc, 2)
zc
erro = zc * desvio / sqrt (n)
erro = round (erro, 5)
erro
cat ( "[", media - erro, ",", media + erro, "]")

#Exemplo 02: A indústria Brasileira, historicamente, produz multímetros com desvio padrão = 3.0 μV. Um lote
#de 18 multímetros, para verificação de qualidade, resultou em medição de 4,7 μV.

#a) Intervalo com nível confiança de 98%.

alfa = 0.02
desvio = 3
media = 4.7
n = 18
zc = qnorm( 1 - alfa/2, 0, 1)
zc = round (zc, 2)
zc
erro = zc * desvio / sqrt (n)
erro = round (erro,2)
erro
cat ("[", media - erro, ",", media + erro, "]")

#b) Intervalo com nível confiança de 90%.

alfa = 0.10
desvio = 3
media = 4.7
n = 18
zc = qnorm( 1 - alfa/2, 0, 1)
zc = round(zc, 2)
zc
erro = zc * desvio / sqrt (n)
erro = round (erro, 2)
erro
cat ( "[", media - erro, ",", media + erro, "]")

#Exemplo 03: Para estimar a renda semanal média de garçons de restaurantes em uma grande
#cidade, é colhida uma amostra da renda semanal de 75 garçons. A média e o desvio padrão
#amostrais encontrados são R$ 227,00 e R$ 15,00 respectivamente. Determine um intervalo de
#confiança, com coeficiente de confiança de 90%, para a renda média semanal.


alfa = 10/100
n = 75
media = 227
desvio = 15
zc = qnorm ( (1 - alfa/2), 0, 1)
ICinf = media - zc * desvio/sqrt(n)
ICsup = media + zc * desvio/sart(n)

cat("[ ", ICinf, " ,  ", ICsup,  "]")
se = desvio / sqrt (n)
cat ("[", media + qnorm(0.05) * se , ",", media+ qnorm(0.95) * se , "]")
qnorm(0.05)
qnorm(0.95)

#Intervalo de Confiança – Variância Desconhecida

#Exemplo 01: Em um processo para obtenção de compostos químicos de tintas, obteve-se os seguintes
#tempos: 90, 92, 92, 95, 98, 99, 100, 100, 100 e 117 segundos.

#a) Construir um intervalo com nível confiança de 95%.

valores <- c(90, 92, 92, 95, 98, 99, 100, 100, 100, 117 )
alfa = 0.05
n = length (valores)
desvio = sd (valores)
media = mean (valores)
tc = qt (p = 1 - alfa/2, df= n-1)
tc = round(tc, 3)
tc
erro = tc * desvio / sqrt (n)
erro = round (erro, 3)
erro
cat ("[", media - erro, ",", media + erro, "]")

#Exemplo 02: Foram realizados testes glicêmicos em 25 pacientes após um jejum de 8 horas. Os resultados são
#apresentados na tabela abaixo. Encontrar um intervalo de confiança de nível de 95 % para a média μ.

alfa = 0.05
val <- scan ()

#input:
#1: 80 118 100 90 83
#6: 117 95 84 102 80
#11: 112 78 102 121 82
#16: 77 88 73 104 88
#21: 132 91 103 140 101
#26:

n = length (val)
tc = qt(1- alfa/2,24)
tc = round(tc, 5)
tc
#[1] 2.0639
media = mean (val)
desvio = sd (val)
erro = tc * desvio / sqrt (n)
erro = round (erro,4)
erro
cat ( "[", media - erro, ", ", media + erro, "]")
#[ 90.284 , 104.996 ]
t.test (val)

#Exemplo 03: Como parte de um projeto maior para estudar o comportamento de painéis de revestimento tencionado,
#componente estrutural que está sendo usado extensivamente nos Estados Unidos, o artigo "Time-Dependent Bending
#Properties of Lumber" relatou diversas propriedades mecânicas de espécimes de madeira serrada de pinho da Escócia.
#Considere as seguintes observações sobre o módulo de elasticidade (MPa) obtido 1 minuto depois da aplicação de carga
#de: 10,49 16,62 17,30 15,48 12,97 17,26 13,40 13,90 13,63 13,26 14,37 11,70

valores <- c(10.49, 16.62, 17.30, 15.48, 12.97, 17.26, 13.40, 14.76, 13.90, 13.63, 13.26, 14.37, 11.70, 15.47, 17.84, 14.07)
alfa = 0.01
n = length (valores)
desvio = sd (valores)
media = mean (valores)
tc = qt (p = 1 - alfa/2, df= n-1)
tc = round(tc, 4)
tc
erro = tc * desvio / sqrt (n)
erro = round (erro,4)
erro
cat ( "[", media - erro, ",", media + erro, "]")
t.test (valores, conf.level = 0.99)
result <- t.test (valores, conf.level = 0.99)
result$conf.int

#Exemplo 04 – Suponha que em n = 400 provas obtemos k = 80 sucessos. Obter
#um intervalo de confiança com 90 % de nível de confiança.

prop.test(x = 80, n = 400, conf.level = 90/100)

#Exemplo 09 – Considere testes de vazamentos identificados em dois municípios A e B. No município A
#foram examinados 500 edifícios e em 100 apresentaram falhas. No B foram examinados 1000 edifícios e em
#300 apresentaram falhas. Construir um intervalo com nível confiança de 95% para o município B.

#Município A:

alfa = 0.05
n = 500
p = 100/500
zc = qnorm (1 - alfa/2, 0, 1)
zc = round(zc, 2)
zc
#[1] 1.96
erro = zc * sqrt (p * (1 - p) / n)
erro = round (erro, 5)
erro
#[1] 0.03506
cat ("[", p- erro, ",", p+ erro, "]")
#0.16494 , 0.23506 

#Município B:

alfa = 0.05
n = 1000
p = 300/1000
zc = qnorm (1 - alfa/2, 0, 1)
zc = round(zc, 2)
zc
#[1] 1.96
erro = zc * sqrt (p * (1 - p) / n)
erro = round (erro, 5)
erro
#[1] 0.0284
cat ( "[", p-erro, ", ",p + erro, "］")
#[ 0.2716 , 0.3284 ]


#Análise da Variância (ANOVA)
#Comandos usados:
#Leitura de datasets, summary, anova & post.hoc



#cont: slide 33/87 teste de hipóteses.






