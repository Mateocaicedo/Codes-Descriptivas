
vision = factor(c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0),labels=c("No padece", "Padece"))
absolutas <- table(vision);absolutas
tabla = data.frame(absolutas); tabla

porcent <-  round(prop.table(absolutas)*100);porcent

View(tabla)


#----Diagrama circular----

colores <- c("#57EED9", "#F6F849")
leyenda <- c("No padece", "Padece")

etiqueta <- paste0(porcent, "%"); etiqueta
pie(porcent, labels = etiqueta, col = colores, border = 0, main = "Personas con problema visual")
legend("topright", legend=leyenda,
fill =colores, cex=0.8, text.font=4,text.width = 0.5, bg='lightblue')
#----Diagrama de barras----

barplot(absolutas, xlab = "Problema de vision", ylab= "Frecuencia", main = "Personas con problema visual", col = colores )

library(ggplot2)
ggplot(tabla, aes( vision,Freq)) +
  geom_bar( stat='identity', fill = c("#F6F849", "#57EED9")) +
  ylim(c(0,15))+
  labs( y="Cantidad", x=NULL)+
  facet_wrap(~"Personas con problemas de vista")    


