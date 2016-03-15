try(dev.off(),silent=TRUE)

subset.detalle <- detalle[detalle$area != "juntos" & detalle$leer.escr != "juntos", ]

plot.new()
qplot(leer.escr, hijos, data = subset.detalle, facets = . ~ area, geom = "boxplot")
