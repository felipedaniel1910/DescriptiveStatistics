#### Introdução ao programa R ####
##### Tipos de variáveis
nome= "João"
class(nome)
a=18
b=9
c= a*b
class(a)

z=1i
class(z)


### Comandos de ajuda
help(tópico)
?(tópico)



#### Calculos simples
## soma
1+1

##subtração
14-6

##multiplicação
9*9

## dividisão
50/5


## Raiz
sqrt(25)


######### Vetores e sequencias
x<-c(12,24,14) ## or
x=c(12,24,14) 


## Sequencia 
x1<-1:5
x1

x1+2


y1=6:10
 y1
##soma de sequencia
x1+y1

##multiplicação
x1*y1


##juntar
z=c(x1,y1)
z1=cbind(x1,y1)
z2=rbind(x1,y1)


###### Repetições e sequencias
### Repetições
## Primeira coluna
rep(1:4, each=12)

## Segunda coluna
rep(rep(1:3, each=4),4)

## Terceira coluna
rep(1:4, 12)

#### Sequencias
seq(15)

seq(0, 1, length.out = 11)

seq(1, 9, by = 2)     

seq(1, 12, by = 3)

seq(1.575, 5.125, by = 0.05)




#### Outras operações
x2 =c(11, 22, 33, 44, 55)
x2[3]
x2[3:5]

####### Considere o vetor de informações y ########
y=c(0, 4, 2, 1, 0, 4, 0, 3, 0, 3, 3, 3, 4, 4, 2, 2, 0)

### Buscas condicionais dentro de y como, por exemplo, procurar valores menor que 3
y[y<3]

### Procurar valores menor ou igual a 3
y[y<=3]

##### Procurar valores igual a zero ( “igual a” ou "==" é assim mesmo!)
y[y==0]

### Procurar valores diferentes de zero ( "!=" é o operadora neste caso)
y[y!=0]

### Determinar o número de observações do vetor
length (y)

### Determinar o número de valores igual a zero
length(y[y==0])





###################################
#### Estatística descritiva #######
###################################
### Exemplo:Notas de 50 alunos da disciplina de matemática no 3a. do ensino fundamental;


##entrando com as informações em forma de vetor
notas=c(4.53, 5.48, 7.25, 9.36, 5.02, 7.01, 2.71, 7.35, 9.23, 9.4, 
8.19, 3.98, 3.71, 8.77, 9.75, 0.21, 8.04, 7.17, 9.19, 4.86, 
9.9, 9.9, 8.47, 6.39, 8.34, 7.64, 5.52, 7.34, 3.38, 5.14, 4.45, 
3.25, 6.39, 6.01, 2.90, 9.40, 3.77, 8.15, 10, 7.65, 9.34, 
8.01, 7.25, 5.25, 2.23, 7.25, 9.54, 7.55, 5.47, 7.56)


### Medidas descritivas############
###################################

### média
mean(notas)

### Variancia
var(notas)

### Desvio padrão
sd(notas)

### Menor nota
min(notas)

### Maior nota
max(notas)


#### Resumo 
summary(notas)


### posição da maior nota
which.max(notas)

### posição da menor nota
which.min(notas)

### Moda
notas.tb=table(notas)
notas.mo <- names(notas.tb)[which.max(notas.tb)] 
notas.mo


################################
##### Outro exemplo ###
### y taxa de mortalidade ( unidade/100mil habitantes) de AIDS/HIV em um determinado paíscom pouco acesso ao tratamento)

### Escanear as informações

y=scan()
39.52 35.17 33.14 29.32 43.90 30.25 41.56 31.20 44.46 31.37
39.82 38.52 32.35 34.42 30.05 37.91 44.16 40.67 40.59 37.42

####

### Medidas descritivas############
###################################

### média
mean(y)

### Variancia
var(y)

### Desvio padrão
sd(y)

### Menor 
min(y)


### Maior 
max(y)


### Resumo
summary(y)


### Moda
y.tb=table(y)
y.mo <- names(y.tb)[which.max(y.tb)] 
y.mo

#### Qual informação tem maior variabilidade? As notas dos alunos ou a taxa de mortalidade?
### Uso do coeficiente de variação.
cv_notas= (sd(notas)/mean(notas))*100

cv_txmort=(sd(y)/mean(y))*100