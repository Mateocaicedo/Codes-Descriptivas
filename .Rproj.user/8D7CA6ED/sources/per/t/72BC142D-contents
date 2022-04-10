NumHnos <- c(1,4,28,5,3,0,1,1,2,7,3,1,2,3,3,4,0,1,0,1,0,0,1,1,1,2)

absoluta <-table(NumHnos); absoluta

diag = data.frame(absoluta); diag

frecuencia <- as.data.frame(absoluta); frecuencia
View(frecuencia)
frec_rel <-  round(prop.table(absoluta)*100,4); frec_rel

frecab <- as.data.frame(absoluta); frecab

acumNum <- cumsum(frecab[2]); acumNum

frec_rel <- as.data.frame(frec_rel);frec_rel

acum <- cumsum(frec_rel[2]); acum

tabla <- data.frame(absoluta, acumNum, frec_rel[2],acum);tabla


colnames(tabla)<-c("Numero de hermanos", "Numero de personas", "Acumulado de personas","Porcentaje de personas", "Acumulado de personas"); tabla
View(tabla)

barplot(absoluta, xlab = "Hermanos", ylab= "Respuestas", main = "Cantidad de hermanos por personas", col = colores )

colores <- c("#9F3FDC", "#F38A4E", "#25CEF2", "#E73D3D", "#E9F34E", "#67E964", "#ECF8EC", "#373937")
library(ggplot2)
ggplot(diag, aes(y = Freq , x=NumHnos)) +
  geom_bar( stat='identity', fill = colores) +
  labs(title = "Cantidad de hermanos por personas", y="Respuestas", x="Hermanos")
