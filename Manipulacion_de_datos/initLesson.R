# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.
.pathtofile <<- function(course_, lesson_, file_){
  if(as.character(packageVersion("swirl")) > "2.2.21"){
    file.path(get_swirl_option("courses_dir"), course_, lesson_, file_)
  } else {
    file.path(find.package("swirl"), "Courses", course_, lesson_, file_)
  }
}

# Make path to csv available to user
path2csv1 <- file.path(path.package('swirl'), 'Courses',
                       'ConoceR',
                       'Manipulacion_de_datos',
                       'ciclovia.csv')

# Create datasets for user. We don't advertise that we're
# doing this, but it will be necessary for students who
# quit and later resume. We are not saving the variable
# to the progress file to save on performance.
cicLoja <- read.csv(path2csv1)
#detalle <- read.csv(path2csv2)
