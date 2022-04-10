alturas <- c(1.59, 1.70, 1.60, 1.70,1.75, 1.63, 1.54, 1.78, 1.57, 1.70, 1.75, 1.63, 1.69, 1.86, 1.75, 1.80, 1.72, 1.74,1.70, 1.80, 1.83, 1.87, 1.60, 1.75, 2.00, 1.70)
altura = as.data.frame(alturas); altura
length(alturas)
"""n = length(alturas);n

numInter = nclass.Sturges(alturas); numInter
amplitud = diff(range(alturas)/10); amplitud
print(amplitud)

L1 = min(alturas)-1/2*0.1
L2 = L1 + amplitud
L3 = L2 + amplitud
L4 = L3 + amplitud
L5 = L4 + amplitud
L6 = L5 + amplitud"""

rango = max(alturas)- min(alturas); rango
intervalos =  nclass.Sturges(alturas); intervalos
amplitud = round(rango / intervalos, 2);amplitud


L1 = min(alturas)-0.05; L1
L2 = L1 +amplitud; L2


X1 = (L1 + L2)/2; X1
X2 = X1+amplitud; X2

L=min(alturas)+amplitud*(0:6); L

X=(L1 + L2)/2 +amplitud*(0:5); X

x_int = cut(alturas, breaks = L, right = FALSE); x_int
x_MC = data.frame(table(Marcadclase=cut(alturas, breaks = L, labels=X, right = FALSE))); x_MC
x_Num=cut(alturas, breaks=L, labels=FALSE, right=FALSE); x_Num




absolutas <- table(alturas);absolutas
frecuenciaAcumulada <- cumsum(tablaFRec$Freq)

frecuenciaAcumulada <- as.data.frame(frecuenciaAcumulada);
FrecuenciaRelativa <- prop.table(tablaFRec$Freq)
FrecuenciaRelativa <- as.data.frame(FrecuenciaRelativa);

FrecRacumulada <- cumsum(FrecuenciaRelativa); FrecRacumulada
sum(FrecuenciaRelativa)

tablaFRec <- data.frame(table(Frecuencia_agrupada = cut(alturas, breaks = intervalos, right = FALSE, include.lowest=TRUE)), x_MC[1], frecuenciaAcumulada, FrecuenciaRelativa, FrecRacumulada)
tablaFRec
#--tabla de frecuencia agrupada con fdth----
install.packages(fdth)
library(fdth)

dist <- fdt(alturas,breaks="Sturges"); dist
#----histograma con funcion hist----

hist(alturas, breaks = intervalos,
     col = c("#9F3FDC", "#F38A4E", "#25CEF2", "#E73D3D", "#E9F34E", "#67E964"),
     border = "gray10",
     main = "Alturas en un salón de clases",
     xlab = "",
     ylab = "Personas")

#----Histograma con ggplot----
library(ggplot2)
ggplot(data = altura, 
       mapping = aes(x = alturas))+
  geom_histogram(bins = 9, fill="#25CEF2")+
  facet_wrap(~"Alturas de un salón de clases")+
  labs(title = "", y = "Personas", x="Intervalos de altura")

#----poligono de frecuencia Relativa----
plot(tablaFRec$FrecuenciaRelativa, type = "o", col = "blue",xlab = "Intervalos de alturas",ylab  = "Frecuencia relativa relativa" , main = "Poligono de frecuencia relativa")

#----poligono de frecuencia absoluta----

plot(tablaFRec$Freq, type = "o", col = "blue" , xlab = "Intervalos de alturas",ylab  = "Frecuencia absoluta",  main = "Poligono de frecuencia absoluta")

#----ojiva de la frecuencia relativa acumulada

plot(tablaFRec$FrecuenciaRelativa.1, type = "o", col= "blue", xlab = "Intervalos de alturas",ylab  = "Frecuencia relativa acumulada", main = "Ojiva de frecuencia acumulada", xaxt="n",yaxt="n",ylim=c(0,1.0))
axis(side=2,c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0),labels=TRUE,las=2) 
axis(side=1,c(1, 2, 3, 4, 5, 6),labels=TRUE)


