#----tabla de frecuencia para datos no agrupados----
#----Numero de transductores de temperatura defectuosa por lote----
#----Tipo cuantitativa discreta
#----Nivel: razon----

defectuosos <-c(2,1,2,4,0,1,3,2,0,5,3,3,1,3,2,4,7,0,2,3,0,4,2,1,3,1,1,3,4,1,2,3,2,2,8,4,5,1,3,1,5,0,2,3,2,1,0,6,4,2,1,6,0,3,3,3,6,1,2,3)
length(defectuosos)
#----hallar las frecuencias absolutas----
absolutas <- table(defectuosos); absolutas

#----convertir en data frame----
frecuencia <- as.data.frame(absolutas); frecuencia

#----frecuencias relativa----
porcentaje <- prop.table(absolutas)
porcentaje <- round(prop.table(absolutas)*100,6); porcentaje

porcentajeData<- as.data.frame(porcentaje); porcentajeData

porcentajes <- table(porcentaje); porcentajes
Frecacum <- cumsum(absolutas); Frecacum

tabla<- data.frame(absolutas, porcentajeData[2], cumsum(porcentajeData[2])); tabla
#----cambiar nombre columnas----

colnames(tabla)<-c("Numero de transductores defectuoso", "Numero de lotes", "Porcentaje de lotes", "Acumulado de lotes"); tabla

#--diagrama circular
etiqueta <- paste0(absolutas, "%"); etiqueta
colores <- c("#9F3FDC", "#F38A4E", "#25CEF2", "#E73D3D", "#E9F34E", "#67E964", "#ECF8EC", "#373937", "#CB8BBE")
cant<-length(colores);cant

pie(porcentaje, labels = etiqueta, clockwise = TRUE, col = colores,main = "Numero de transductores defectuosos", border = 0)
legend("topright", c("0", "1","2","3","4", "5", "6", "7", "8"), cex = 0.8, fill = colores)

