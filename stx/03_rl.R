# 03_rl.R

library(ltm)

# Matriz de correlaciones.
rcor.test(apa[,c(3:8)])

# Correlación entre el número de post por referencia y la diferencia de caracteres respecto al correcto.
cor.test(apa$npr, apa$dc)

plot(apa$npr, apa$dc, 
     ylab= "Diferencia de caracteres (respecto a referencia correcta)", 
     xlab = "Númreo de posts",
     axes = F,
     xlim = c(0, 35),
     ylim = c(-200,50))
axis(1)
axis(2, las =2)
abline(lm(apa$dc ~ apa$npr), col = "red")

# Modelo de regresión lineal para entender la diferencia de caracteres en función del número de posts.
lm(apa$dc ~ apa$npr)


plot(jitter(apa$autor), jitter(apa$fecha))
