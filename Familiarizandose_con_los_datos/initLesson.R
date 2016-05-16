.pathtofile <<- function(course_, lesson_, file_){
	course_path <- tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
  file.path(course_path, course_, lesson_, file_)
}

# Path to data
.datapath <- .pathtofile('ConoceR', 'Familiarizandose_con_los_datos',
                      'plant-data.txt')

# Read in data
plants <- read.csv(.datapath, strip.white=TRUE, na.strings="")

# Remove annoying columns
.cols2rm <- c('Accepted.Symbol', 'Synonym.Symbol')
plants <- plants[, !(names(plants) %in% .cols2rm)]

# Make names pretty
names(plants) <- c('Nombre_científico', 'Duracion', 'Periodo_crecimiento',
                   'Color_follaje', 'pH_Min', 'pH_Max',
                   'Precip_Min', 'Precip_Max',
                   'Tolerancia_de_sombra', 'Temp_Min_F')
