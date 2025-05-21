library(readr)
setwd("C:/Users/angie/Downloads")
# Cargar datos desde el archivo CSV llamado dataset.csv (Mediación Virtual)
datos <- read.csv("dataset.csv", encoding = "UTF-8")

# Mostrar resumen estadístico
summary(datos)

# Mostrar dimensiones del dataset
dim(datos)

# Extraer solo columnas numéricas
datos_numericos <- datos[sapply(datos, is.numeric)]

# Calcular la media de cada columna numérica
medias <- colMeans(datos_numericos, na.rm = TRUE)

# Mostrar las medias
medias

# Función que recibe un vector numérico y devuelve su desviación estándar
calcular_desviacion <- function(vector_numerico) {
  if (!is.numeric(vector_numerico)) {
    stop("El argumento debe ser un vector numérico.")
  }
  return(sd(vector_numerico, na.rm = TRUE))
}

# Función que recibe un data frame y devuelve los nombres de las columnas con NA
columnas_con_na <- function(df) {
  if (!is.data.frame(df)) {
    stop("El argumento debe ser un data frame.")
  }
  return(names(df)[colSums(is.na(df)) > 0])
}

calcular_desviacion <- function(vector_numerico) {
  if (!is.numeric(vector_numerico)) {
    stop("El argumento debe ser un vector numérico.")
  }
  return(sd(vector_numerico, na.rm = TRUE))
}

# Función que recibe un data frame y devuelve los nombres de las columnas con NA
columnas_con_na <- function(df) {
  if (!is.data.frame(df)) {
    stop("El argumento debe ser un data frame.")
  }
  return(names(df)[colSums(is.na(df)) > 0])
}

# Aplicar las funciones al dataset importado (datos)

# Extraer la primera columna numérica del dataset para calcular su desviación estándar
datos_numericos <- datos[sapply(datos, is.numeric)]
primera_columna <- datos_numericos[[1]]

# Calcular la desviación estándar
desviacion <- calcular_desviacion(primera_columna)

# Obtener las columnas con NA
columnas_na <- columnas_con_na(datos)

# Mostrar los resultados
cat("Desviación estándar de la primera columna numérica:", desviacion, "\n")
cat("Columnas que contienen NA:\n")
print(columnas_na)








