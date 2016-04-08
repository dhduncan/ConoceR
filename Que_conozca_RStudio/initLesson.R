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
