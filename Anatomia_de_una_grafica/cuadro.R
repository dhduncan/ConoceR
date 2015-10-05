try(dev.off(),silent=TRUE)

plot.new()
plot(v, type="n", axes=F, xlab = "",  ylab="")
box(lty = 3)
mtext(c("side = 1", "side = 2", "side = 3", "side = 4"), side = c(1, 2, 3, 4), col = "light grey", line = 2, cex = 2)
      
