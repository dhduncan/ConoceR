
GetColorHexAndDecimal <- function(color)
{
  c <- col2rgb(color)
  sprintf("#%02X%02X%02X %3d %3d %3d", c[1],c[2],c[3], c[1], c[2], c[3])
} 



    SetTextContrastColor <- function(color)
    {
      ifelse( mean(col2rgb(color)) > 127, "black", "white")
    }

    # Define this array of text contrast colors that correponds to each
    # member of the colors() array.
    TextContrastColor <- unlist( lapply(colors(), SetTextContrastColor) )


try(dev.off(),silent=TRUE)

plot.new()
   
colCount <- 25 # number per row
rowCount <- 27

    # 1b. Plot matrix of R colors, in "hue" order, 25 per row.
    # This example plots each rectangle one at a time.
    RGBColors <- col2rgb(colors()[1:length(colors())])
    HSVColors <- rgb2hsv( RGBColors[1,], RGBColors[2,], RGBColors[3,],
                 maxColorValue=255)
    HueOrder <- order( HSVColors[1,], HSVColors[2,], HSVColors[3,] )

    plot(0, type="n", ylab="", xlab="",
    axes=FALSE, ylim=c(rowCount,0), xlim=c(1,colCount))

    title("Los colores de R -- ordenados por tonalidad, saturación, valor")

    for (j in 0:(rowCount-1))
    {
      for (i in 1:colCount)
      {
       k <- j*colCount + i
       if (k <= length(colors()))
       {
        rect(i-0.5,j-0.5, i+0.5,j+0.5, border="black", col=colors()[ HueOrder[k] ])
        text(i,j, paste(HueOrder[k]), cex=0.7, col=TextContrastColor[ HueOrder[k] ])
       }
      }
    }


    