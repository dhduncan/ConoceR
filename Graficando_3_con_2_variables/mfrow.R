file_ <- .pathtofile(course_ = "ConoceR", 
                     lesson_ = "Graficando_3_con_2_variables", 
                     file_ = "mfrow.png")
try(dev.off(),silent=TRUE)
par(mar=c(0,0,0,0))
plot.new()
plotArea <- par('fig')
rasterImage(readPNG(file_),plotArea[1],plotArea[3],plotArea[2],plotArea[4],
            interpolate=FALSE)
