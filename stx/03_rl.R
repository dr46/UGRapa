# 03_rl.R

library(ltm)

# Matriz de correlaciones 
rcor.test(apa[,c(3:8)])

# Correlación entre el número de post por referencia y la diferencia de caracteres respecto al correcto
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


para archivo steps


####

plot(apa[which(apa$td==1),"sa.autor"], type = "s", 
     col = "magenta", lty = 1,
     axes =F, 
     lwd=2,
     xlab = "Número de posts",
     ylab = "Número de errores acumulados",
     ylim = c(0,35),
     xlim = c(0,35))
points(apa[which(apa$td==1),"sa.fecha"], type = "s", col = "olivedrab", lwd=2)
points(apa[which(apa$td==1),"sa.titulo"], type = "s", col = "blue", lwd=2, lty = 3)
points(apa[which(apa$td==1),"sa.fuente"], type = "s", col = "black", lwd=2, lty =3)
axis(1)
axis(2, las=2)
text(3, 33, "TD = 1")
text(34, 23, "A")
text(34, 16, "P")
text(34, 8, "T")
text(34, 31, "S")
