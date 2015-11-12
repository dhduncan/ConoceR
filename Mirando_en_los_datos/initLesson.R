# Path to data
.datapath <- file.path(path.package('swirl'), 'Courses',
                      'ConoceR', 'Mirando_en_los_datos',
                      'plant-data.txt')
# Read in data
plants <- read.csv(.datapath, strip.white=TRUE, na.strings="")

# Remove annoying columns
.cols2rm <- c('Accepted.Symbol', 'Synonym.Symbol')
plants <- plants[, !(names(plants) %in% .cols2rm)]

# Make names pretty
names(plants) <- c('Nombre_científico', 'Duración', 'Periodo_crecimiento',
                   'Color_follaje', 'pH_Mín', 'pH_Max',
                   'Precip_Mín', 'Precip_Max',
                   'Tolerancia_de_sombra', 'Temp_Mín_F')