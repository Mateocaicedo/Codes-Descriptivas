library(prob)
library(combinat)

omega <-tosscoin(10) #moneda
dim(omega)#saber el tamaño muestral

omega[6:8, ] #extrae el resultado del 6 al 8

omega[5, ]#extraes solo el resultado 5

omega[c(1,6), ]
 #para hallar los lanzamientos de los dados

Omega <-rolldie(2)#dados
dim(Omega)



dim(subset(Omega,(X1+X2)%%2 ==0))

subset(Omega,(X1+X2)%%3==0)


subset(Omega,(X1+X2)%%(X1+X2)==0 | (X1+X2)%%1==0)


#al tirar los dos dos 




X<- 1:6; X
Y<- 2:4;Y
Z<-c(2,2,4);Z

Y%in%X
Z%in%X
X%in%Y
X%in%Z
Y%in%Z
all(Y%in%X)




Omega <- rolldie(2)
Omega
A <- subset(Omega, isin(Omega, c(2, 1), ordered = TRUE)); A 
B <- subset(Omega, isin(Omega, c(1, 2), ordered = FALSE)); B

all(A%in%B)#Revisar si un todos los elementos de un evento pertencen a otro

union(A,B)#union 
intersect(A,B)#interseccion
setdiff(B,A)#diferencia
setequal(A,B)#igualdad
