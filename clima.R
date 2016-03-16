mel <- c(25.9,	26.0,	24.1,	20.6,	17.1,	14.3,	13.7,	15.1,	17.2, 19.7,	21.8,	24.1)
mes <- c("E", "F", "Mr", "Ab", "Ma", "Jn", "Jl", "Ag", "S", "O", "N", "D")

loja <- c(22.1, 22.3, 22.4, 22.4, 21.9, 21.2, 20.7, 21, 21.3, 21.4, 21.6, 21.8)

plot(x = 1:12, y = mel, xaxt="n", xlab = "Meses del año", type = "n", las=1, ylab="Temperatura máxima grados Celsius")
axis(side = 1, at = 1:12, labels = mes)

title(main="Temperaturas máximas promedias de Loja, Ecuador (1900-2012)")
lines(loja, col="red", pch=19, type = "b")

plot(x = 1:12, y = loja, xaxt="n", xlab = "Meses del año", 
  type = "b", las=1, pch=19, col=2, 
  ylab="Temperatura máxima grados Celsius", ylim = c(20.5, 22.5))

# anotación ----

plot(x = 1:12, y = mel, xaxt="n", xlab = "Meses del año", type = "n", las=1, ylab="Temperatura máxima grados Celsius")
axis(side = 1, at = 1:12, labels = mes)

polygon()

