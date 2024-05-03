---
title: 'UGRapa: dinámicas de mejora en el uso de referencias bibliográficas en la universidad'
output:
  html_document: default
  pdf_document: default
---

# Introducción

Tal


# Carpetas/directrios

Este proyecto contiene un conjunto de carpetas en las que se organizan los archivos. Más concretamente, las carpetas del proyecto y la descripción de la información que contienen es esta:

- dat: esta carpeta contiene archivos de datos.
- stx: esta carpeta contiene archivos de código.
- fig: esta carpeta contiene las figuras generadas por el proyecto.


# Archivos 

## Archivos de datos

- td.pdf: este archivo contiene una tabla en la que aparecen los enlaces que se utilizaron como punto de partida para solicitar que el alumnado generase referencias bibliográficas siguiendo el estilo de la [American Psychological Association (2020)](https://doi.org/10.1037/0000165-000). La primera columna de la tabla contenida en este documento (*td*) se refiere al código utilizado en el archivo *apa.csv*.

- apa.csv: este es el archivo de datos principal del proyecto. Contiene las siguientes variables:

    - caso: es el código que identifica inequívocamente cada uno de las referencias propuestas por los alumnos a los retos presentados en la tabla *td.pdf*. Esta columna sirve para combinar el archivo *apa.csv* con el archivo *post.pdf*.
    - td: se refiere al tipo de documento a referenciar teniendo en cuenta lo planteado en el archivo *td.pdf*.
    - npr: representa el número de post llevados a cabo por cada tipo de referencia. 
    - autor: indica si hay (1) o no (0) error en la parte de la referencia que se vincula con la autoría del documento.
    - titulo: indica si hay (1) o no (0) error en la parte de la referencia que se vincula con el título del documento.
    - fuente: indica si hay (1) o no (0) error en la parte de la referencia que se vincula con la fuente del documento.
    - cara: indica el número de caracteres contenidos en la propuesta de referencia emitida por el alumnado. Este valor se calcula teniendo en cuenta lo que aparece en la tabla *post.pdf*.
    - et: indica el número de partes en las que hay errores en la referencia propuesta. Es decir, esta variable representa el resultado de realizar la siguiente suma $autor + fecha + titulo + fuente$.
    - sa.autor: representa la suma acumulativa de errores para el campo autor por tipo de documento (*td*).
    - sa.fecha: representa la suma acumulativa de errores para el campo fecha por tipo de documento (*td*).
    - sa.titulo: representa la suma acumulativa de errores para el campo título por tipo de documento (*td*).
    - sa.fuente: representa la suma acumulativa de errores para el campo fuente por tipo de documento (*td*).
    - sa.et: representa la suma acumulativa de errores totales por tipo de documento (*td*).
    - dc: representa la diferencia de caracteres del post propuesto ($C^{prop}_i$) considerando el número de caracteres de la referencia considerada como correcta ($C^{prop}_c$). Es decir, 
    \[C^{prop}_i - C^{prop}_c\]
    Por tanto, un valor positivo en la columna *dc* representa el número de caracteres que la propuesta $i$ sobrepasa el número de caracteres contenido en la propuesta correcta de referencia ($C^{prop}_c$). Por su parte, un valor negativo en esta columna representa el número de caracteres de la propuesta $i$ que faltan a la referencia teniendo en cuenta la propuesta correcta de referencia ($C^{prop}_c$).

- post.pdf: este archivo contiene una tabla con las propuestas de referencia (*prop*) para cada uno de los tipos de documentos (*td*) propuestos y que aparecen en el archivo *td.pdf*. La columna *caso* sirve para identificar inequívocamente cada uno de los potst y para que pueda vincularse con el archivo *apa.csv*.


## Archivos de código

- UGRapa.R: es el archivo de código maestro del proyecto. Desde este archivo se van ejecutando el resto de los archivos de código del proyecto. 

- 01_import.R: este archivo importa el contenido del archivo *apa.csv* y carga el correspondiente objeto (apa) en el espacio de trabajo de R. 

- 02_descriptivos.R: este archivo estima estadísticos descriptivos sobre el porcentaje de errores globales y por tipo de referencia.

- 03_rl.R: este archivo explora la relación lineal que se establece entre las variables recogidas en el estudio.

# Figuras

em.pdf: gráfico de barras que representa el promedio de errores globales que se producen en cada parte de las referencias.

gd.pdf: gráfico de dispersión para la relación que se observa entre el número de post y la diferencia de caracteres respecto a la referencia correcta.


# Referencias

- American Psychological Association. (2020). *Publication manual of the American Psychological Association* (7th ed.). https://doi.org/10.1037/0000165-000

