# ConoceR
Lecciones en español para la enseñanza del análisis exploratorio de datos en R y RStudio, escritos originalmente para cursos de pregrado de la Universidad Técnica Particular de Loja.  Las lecciones se accede mediante el paquete swirl, y por lo tanto depende de una instalación del mismo.

Para instalar el paquete swirl y poder seguir las lecciones interactivas del curso “ConoceR”, sigan los siguientes pasos cuidadosamente:

## 1. Actualizar R (para tener una versión luego de 3.2.4 está bien). 
Para ello, del siguiente enlace (https://cran.r-project.org/) descargue R para Linux, Mac o Windows, dependiendo del sistema operativo de su computadora:

Tras la descarga, vaya a la carpeta donde guardaron la aplicación (R-3.3.0revised-win.exe o semejante) y ejecútela, seleccionando las opciones por defecto para la instalación.

## 2. Instalar el programa RStudio
Este programa envuelve a R mismo brindándonos características adicionales de gran conveniencia. Descargue el archivo apto para su sistema operativo de esta página: (https://www.rstudio.com/products/rstudio/download/). 

Una vez descargado el archivo, realice la instalación de RStudio. Al lanzar RStudio, R se lanza también, y corre dentro del entorno de RStudio. Todas las funciones y comandos son iguales, simplemente hay características adicionales de gran conveniencia.

## 3. Instalar y cargar el paquete swirl en RStudio.

a. Con conexión al internet, abra RStudio, escriba en la consola `install.packages("swirl")` y pulse Intro. De este modo R instalará el paquete. 

b. Después, hay que cargarlo en la sesión de trabajo siempre y cuando Ud esté en una sesión nueva. Para ello, justamente escriba en la consola `library(swirl)` y pulsen Intro.

Aparecen unas palabras en inglés presentando el paquete, pero se ṕuede manejar swirl en español si prefiere, como sigue:
c. Para que los mensajes de swirl salgan en español, escriban en la consola `select_language()` y pulsen Intro. 

d. Aparecen unas opciones de idioma identificadas cada una con un número; no tienen más que escribir `6` para seleccionar el español y pulsar Intro.

## 4. Instalar las lecciones interactivas del curso ConoceR.
Para llevar a cabo esta tarea, tenemos dos opciones. La primera funciona para la mayoría de usuarios Mac y Linux, pero no suele funcionar para usuarios de Windows (aunque se puede intentarla en primer lugar).

Los dos opciones requieren que tienen vigente una sesión de swirl (vea pasos 3b-d):

### Mac y Linux
a. Escriba en la consola `install_course_github("dhduncan","ConoceR")`, poniendo especial cuidado en escribir los paréntesis, que las comillas sean rectas, los guiones bajos y las mayúsculas, ya que si no, R no reconocerá el comando. 

b. Si tras probar esta opción obtienen un mensaje de error (que aparecerá en inglés), intente la opción para usuarios de Windows, abajo:

### Windows
c. De esta misma página (https://github.com/dhduncan/ConoceR), arriba a la derecha donde [Clone or Download], descargue el curso en formato comprimido (zip) y guárdelo en el escritorio:

d. Una vez descargado, descompriman *al escritorio mismo* (botón derecho > WinRAR (o su equivalente) > Extraer aquí). Obtiene así una carpeta que se llama ConoceR-Master la cual es producto de descomprimir.  (Ojo que lo mas seguro es que lo descomprima a su escritorio para evitar que Windows le bloque en el siguiente paso.)

e. Registre esa carpeta descomprimida. Si dentro de ella se encuentra otra carpeta "ConoceR" debe copiar esa y su contenido al escritorio.  

Pues bien, tienen que revisar que el nombre de la carpeta es únicamente ConoceR, y dentro de ella hay una estructura de carpetas y archivos. 

e. Tras esto, vuelvan a RStudio, tecleen en la consola `install_course_directory("C:XXXXX/ConoceR")` y pulsen Intro. Desde luego, donde **XXXXX** va la ruta para llegar a la carpeta que acaba de obtener en el paso anterior y a la que acaba de cambiar el nombre.

Vea también que la barra oblicua tiene que ir hacia la derecha, así: **/**. Al indicar rutas de acceso a carpetas en Windows, la barra oblicua aparece hacia la izquierda: \, con lo que tendría que cambiarlas al indicar la ruta en R.

Una vez hecho esto, R le debe dar un mensaje indicando que el curso se instaló con éxito. Si es así, ya está listo para comenzar sus lecciones.

___
Importante:

*Para algunos usuarios de Windows a pesar de que hubiera seguido los pasos detalladamente, quede un mensaje de error sugiriendo que la instalación fallara.*   Al surgir tal error, Ud debe intentar lanzar swirl y el curso ConoceR mediante el siguiente paso porque pueda que el "error" no afecta nada.

___
Para comenzar

Para comenzar con las lecciones, simplemente teclee `swirl()` en la consola de RStudio y pulse [Intro]. Comenzarán una serie de diálogos y de instrucciones que tendrá que ir siguiendo para poder ir avanzando con las lecciones.

Al terminar los dialogos, el curso ConoceR le aparecerá en el menú principal.
