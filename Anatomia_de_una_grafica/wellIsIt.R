file_ <- .pathtofile(course_ = "test", lesson_ = "1", file_ = "RStudio.png")
try(dev.off(),silent=TRUE)

plot.new()
plotArea <- par('fig')
rasterImage(readPNG(file_),plotArea[1],plotArea[3],plotArea[2],plotArea[4],interpolate=FALSE)
