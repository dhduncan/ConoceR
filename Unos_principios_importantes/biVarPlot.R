# una gráfica sencilla de una variable
# David H. Duncan

try(dev.off(),silent=TRUE)
plot.new()
boxplot(rnorm(17, 2, 1), ylab="Disminuicion de casos anuales")
mtext("Hospitales con procedimiento nuevo", 1, line = 1)
