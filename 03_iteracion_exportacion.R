for (col_name in names(df)) {
  columna <- df[[col_name]]
  media <- mean(columna, na.rm = TRUE)
  conteo <- sum(columna > media, na.rm = TRUE)
  
  if (conteo > 10) {
    resultados <- rbind(resultados, data.frame(
      columna = col_name,
      conteo_mayores_que_media = conteo
    ))
  }
}

# Supongamos que este es tu data frame
df <- data.frame(
  A = rnorm(100, mean = 5),
  B = rnorm(100, mean = 3),
  C = rnorm(100, mean = 10),
  D = rnorm(100, mean = 2)
)

# Crear una lista para guardar los resultados
resultados <- data.frame(
  columna = character(),
  conteo_mayores_que_media = integer(),
  stringsAsFactors = FALSE
)

# Iterar sobre las columnas con for loop
for (col_name in names(df)) {
  columna <- df[[col_name]]
  media <- mean(columna, na.rm = TRUE)
  conteo <- sum(columna > media, na.rm = TRUE)
  
  if (conteo > 10) {
    resultados <- rbind(resultados, data.frame(
      columna = col_name,
      conteo_mayores_que_media = conteo
    ))
  }
}


write.csv(resultados, file = "resultados/columnas_mayores_que_media.csv", row.names = FALSE)

