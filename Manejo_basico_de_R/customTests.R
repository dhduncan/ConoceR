notify <- function() {
  e <- get("e", parent.frame())
  if(e$val == "No") return(TRUE)
  
  good <- FALSE
  while(!good) {
    # Get info
    name <- readline_clean("¿Qué es tu nombre y apellido? ")
    address <- readline_clean("¿Qué es la dirección de correo electronico de la persona que quiere informar? ")
    
    # Repeat back to them
    message("\n¿Todo bien te parece?\n")
    message("Tu nombre: ", name, "\n", "Para enviar a: ", address)
    
    yn <- select.list(c("Si", "No"), graphics = FALSE)
    if(yn == "Si") good <- TRUE
  }
  
  # Get course and lesson names
  course_name <- attr(e$les, "course_name")
  lesson_name <- attr(e$les, "lesson_name")
  
  subject <- paste(name, "acaba de completar", course_name, "-", lesson_name)
  body = ""
  
  # Send email
  swirl:::email(address, subject, body)
  
  hrule()
  message("He tratado de crear un mensaje nuevo con los siguientes datos:\n")
  message("A: ", address)
  message("Subjeto: ", subject)
  message("Cuerpo: <empty>")
  
  message("\nSi resulta que no haya funcionado, se puede enviar el mismo mensaje manualmente.")
  hrule()
  
  # Return TRUE to satisfy swirl and return to course menu
  TRUE
}

readline_clean <- function(prompt = "") {
  wrapped <- strwrap(prompt, width = getOption("width") - 2)
  mes <- stringr::str_c("| ", wrapped, collapse = "\n")
  message(mes)
  readline()
}

hrule <- function() {
  message("\n", paste0(rep("#", getOption("width") - 2), collapse = ""), "\n")
}
