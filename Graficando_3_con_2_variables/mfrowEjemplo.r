# Ejemplo de una gráfica múltipanel, 4 versiones de los mismos valores solo
# cambiando una instrucción a R acerca del tipo de objeto. El ejemplo vino de
# la sección 2.2 del libro R Graphics escrito por Paul Murrell (2006), publicado
# por Chapman & Hall/CRC

# unos datos
y <- rnorm(20) # saca 20 observaciones aleatoriamente de una distribución normal

# la gráfica.  

par(mfrow=c(2,2)) # establece el cuadro de 2 x 2
plot(y, type = "p") # gráfica sencilla de puntos "p"
plot(y, type = "l") # los mismos datos, esta vez con una linea "l"
plot(y, type = "b") # los mismos datos, con ambos ("b" para "both")
plot(y, type = "h") # los mismos datos, estilo histrograma
dev.off() # apague el dipositivo gráfico, para borrar el cambio a la función par()