# Inicializar resultados vacíos
resultados <- data.frame(
  columna = character(),
  conteo_mayores_que_media = numeric(),
  stringsAsFactors = FALSE
)

# Iterar sobre columnas numéricas
for (nombre_col in names(datos_numericos)) {
  columna <- datos_numericos[[nombre_col]]
  media <- mean(columna, na.rm = TRUE)
  conteo <- sum(columna > media, na.rm = TRUE)
  
  # Mostrar todos los conteos sin filtro
  resultados <- rbind(resultados, data.frame(
    columna = nombre_col,
    conteo_mayores_que_media = conteo
  ))
}

# Mostrar resultados
print(resultados)


write.csv(resultados, file = "resultados/columnas_mayores_que_media.csv", row.names = FALSE)

