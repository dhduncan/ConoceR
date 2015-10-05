try(dev.off(),silent=TRUE)

plot.new()
# una gráfica cualquiera
plot(c(2, 4, 0, 5, 3, 8, 6, 5, 4), main = "Valores para nueve casos independientes",
     ylab="valores", xlab="", las=1, xaxt="n")
mtext("casos", side = 1, line = 1)
