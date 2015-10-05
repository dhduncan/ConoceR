# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

.pathtofile <- function(course_, lesson_, file_){
  if(as.character(packageVersion("swirl")) > "2.2.21"){
    file.path(get_swirl_option("courses_dir"), course_, lesson_, file_)
  } else {
    file.path(find.package("swirl"), "Courses", course_, lesson_, file_)
  }
}
