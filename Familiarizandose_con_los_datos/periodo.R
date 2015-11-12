try(dev.off(),silent=TRUE)

plot.new()
par(mar=c(10,4,3.5,1))
boxplot(plants$Temp_Mín_F~plants$Periodo_crecimiento,
        las=2, ylab = "Temperatura mínima (F)",
        main="Periodo de crecimiento de las plantas\nconforme el promedio temperatura minima")
#mtext(text = "Periodo de crecimiento de las plantas", side = 1, line = 9)

