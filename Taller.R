library(prob)
library(combinat)
Omega <-rolldie(2)#dados
Omega
Espacio_muestral <-dim(Omega); Espacio_muestral

EventoB <- subset(Omega,(X1+X2) ==7); EventoB

EventoC <- subset(Omega,(X1+X2) >=11); EventoC

EventoD <- subset(Omega,(X1+X2) <=2); EventoD

EventoE <- subset(Omega,(X1/X2) ==1); EventoE

EventoF <- subset(Omega,(X1/X2) !=1); EventoF

unionB_F<-union(EventoB, EventoF); unionB_F
interseccionC_E <-intersect(EventoC, EventoE); interseccionC_E
diferenciaC_F<- setdiff(EventoC, EventoF); diferenciaC_F
