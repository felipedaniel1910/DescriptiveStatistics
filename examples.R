### Exemplo de sala- Amostras dependentes (Caso1)
### Leitura dos dados 
placebo=scan()
211
210
210
203
196
190
191
177
173
170
163

hidro=scan()
181
172
196
191
167
161
178
160
149
119
156

#### Teste T-pareado (Caso 1-Amostras dependentes)
t.test(placebo,hidro,paired=T)

######################################################################################
######################################################################################
###Exemplo 2- Amostras pareadas (Caso 1)
# Considere as medidas da circunferência da cintura em 15 mulheres submetidas a dois métodos de massagem modeladora (antigo e novo)

antigo=scan()
59.9  73  69.8 70.9 69.8 82.0 69.7 30.0 29.9 29.6 29.8 30.4 29.9 29.9 29.9

novo=scan()
59.8 70.1 70.8 72.9 67.4 79.7 68.8 30.3 30.5 30.4 29.6 29.1 29.3 30.0 29.4

### Teste de hipóteses
t.test(antigo,novo,paired=T)

#####################################################
#####################################################
###### Outros exemplos #####
## Compare as dietas entre dois grupos distintos (sobrepeso e obeso) em ratos da linhagem wistar, neste caso como se trata de um estudo experimental não há informações sobre a variância populacional

### Dados da dietas
Dieta2<-c(15,19,15,12,13,16,15)
Dieta1<-c(12,8,15,13,10,12,14,11,12,13)
 
## Comparação das variâncias 
var.test(Dieta1,Dieta2)

## Teste T
## Caso 2A-Amostras independentes com variancia populacional desconhecida e iguais
t.test(Dieta1,Dieta2, var.equal=TRUE,alternative="two.sided")

########################################################
#### Considere o preço médio dos imóveis (metro quadrado) localizados em duas regiões distintas (Central e Oeste) em uma cidade metropolitana. Existe diferença nos preços médios dos imóveis?

### Informações sobre as regiões
central=c( 41.2, 40.5, 39.6, 39.4, 38.9, 39.1, 40.9, 41.2, 40.4, 40.0, 40.6, 40.3, 39.2, 40.6, 39.7, 40.3, 40.9, 39.6, 39.7, 41.2)

oeste=c(37.2,34.9, 38.1, 35.4, 35.7, 37.7, 36.4, 36.6, 36.1, 37.4, 36.1, 35.9, 36.9, 37.4, 37.5, 38.0, 36.8, 36.4)


var.test(central,oeste)
t.test(central,oeste,var.equal=T)


#################################################################
## A massa de 10 pássaros migratórios foi medida em duas ocasiões, primeiro em agosto e os mesmos pássaros (marcados individualmente e recapturados) foram remedidos em setembro.

ago<-c(10.3,11.4,10.9,12.0,10.0,11.9,12.2,12.3,11.7,12.0)
set<-c(12.2,12.1,13.1,11.9,12.0,12.9,11.4,12.1,13.5,12.3)

### Caso 1
t.test(ago,set,paired=TRUE)

######### Teste de hipóteses para proporções ####################
########## Exemplo para proporções ####
#prop.test(x, n, p, opções)
#Parâmetros
#x: Vetor contendo o número de sucessos em cada amostra.
#n: Vetor contendo o número de realizações de cada amostra.
#p: P0 sob H0 

### Exemplo trabalhado em sala sobre medicamentos para resfriado
### Comparar com um valor fixo
prop.test(91, 500, 0.2, correct=F)


### Comparar duas proporções
### Exemplo em sala sobre verminoses
prop.test(c(10,26),c(120,260),correct=F) 