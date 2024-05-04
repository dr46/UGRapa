# UGRapa.R --- Documento maestro

# Importación de la base de datos desde el archivo "apa.csv"
source("stx/01_import.R")

# Estadísticos descriptivos
source("stx/02_descriptivos.R", echo = T, encoding = "UTF-8")

# Estudio de relaciones lineales entre variables
source("stx/03_rl.R", echo = T, encoding = "UTF-8")

# Evolución del número de errores por tipo de documento y total
source("stx/04_steps.R", echo = F, encoding = "UTF-8")
