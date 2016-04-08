# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

.pathtofile <<- function(course_, lesson_, file_){
	course_path <- tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
  file.path(course_path, course_, lesson_, file_)
}


# Make path to xlsx available to user
path2csv1 <- .pathtofile('ConoceR',
                       'Graficando_1',
                       'hijosResumen.csv')

# Create datasets for user. We don't advertise that we're
# doing this, but it will be necessary for students who
# quit and later resume. We are not saving the variable
# to the progress file to save on performance.
resumen <- read.csv(path2csv1)
