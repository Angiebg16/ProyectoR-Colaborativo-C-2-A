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

