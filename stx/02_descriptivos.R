# 02_descriptivos.R

summary(apa[,c(4:7, 9, 15)])

# Porcentaje de errores por sección de la referencia
es <- sapply(apa[,c(4:7)], function(col) round(mean(col)*100, 2)); es

# Desviación típica de los porcentajes de error
sapply(apa[,c(4:7)], function(col) round(sd(col), 2))

barplot(sort(es, decreasing = T), 
        ylim = c(0,100),
        ylab = "Porcentaje de errores",
        xlab = "Sección en que aparecen los errores",
        axes = F,
        names.arg = c("Fuente", "Autoría", "Fecha", "Título"),
        col = rainbow(4)
        )

axis(2, las = 2)




# Porcentaje de errores (y desviaciones típicas) por tipo de documento y sección de la referencia
  # Autor
  round(tapply(apa$autor, apa$td, mean)*100, 2)
  round(tapply(apa$autor, apa$td, sd), 2)
  # Fecha
  round(tapply(apa$fecha, apa$td, mean)*100, 2)
  round(tapply(apa$fecha, apa$td, sd), 2)
  # Título
  round(tapply(apa$titulo, apa$td, mean)*100, 2)
  round(tapply(apa$titulo, apa$td, sd), 2)
  # Fuente
  round(tapply(apa$fuente, apa$td, mean)*100, 2)
  round(tapply(apa$fuente, apa$td, sd), 2)



