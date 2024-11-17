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







