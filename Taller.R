library(prob)
library(combinat)
Omega <-rolldie(2)#dados
Omega
muestra<-dim(Omega); muestra

B <- subset(Omega,(X1+X2) ==7); B

C <- subset(Omega,(X1+X2) >=11);C

D <- subset(Omega,(X1+X2) <=2); D

E <- subset(Omega,(X1/X2) ==1); E

F <- subset(Omega,(X1/X2) !=1 ); F

unionB_F<-union(B, F); unionB_F
interseccionC_E <-intersect(C, E); interseccionC_E
diferenciaC_F<- setdiff(C, F); diferenciaC_F
  