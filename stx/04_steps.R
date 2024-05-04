# 04_steps.R

#### TD = 1

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
points(apa[which(apa$td==1),"sa.fuente"], type = "s", col = "black", lwd=2, lty =4)
axis(1)
axis(2, las=2)
text(2, 35, "TD = 1")
text(34, 23, "A")
text(34, 16, "FP")
text(34, 8, "T")
text(34, 31, "F")

### TD = 2

plot(apa[which(apa$td==2),"sa.autor"], type = "s", 
     col = "magenta", lty = 1,
     axes =F, 
     lwd=2,
     xlab = "Número de posts",
     ylab = "Número de errores acumulados",
     ylim = c(0,8),
     xlim = c(0,12))
points(apa[which(apa$td==2),"sa.fecha"], type = "s", col = "olivedrab", lwd=2, lty = 3)
points(apa[which(apa$td==2),"sa.titulo"], type = "s", col = "blue", lwd=2, lty = 1)
points(apa[which(apa$td==2),"sa.fuente"], type = "s", col = "black", lwd=2, lty =1)
axis(1)
axis(2, las=2)
text(1, 8, "TD = 2")
text(11, 4, "A")
text(11, 3, "FP")
text(11, 7, "T")
text(11, 6, "F")


### TD = 3

plot(apa[which(apa$td==3),"sa.autor"], type = "s", 
     col = "magenta", lty = 1,
     axes =F, 
     lwd=2,
     xlab = "Número de posts",
     ylab = "Número de errores acumulados",
     ylim = c(0,20),
     xlim = c(0,20))
points(apa[which(apa$td==3),"sa.fecha"], type = "s", col = "olivedrab", lwd=2, lty = 1)
points(apa[which(apa$td==3),"sa.titulo"], type = "s", col = "blue", lwd=2, lty = 3)
points(apa[which(apa$td==3),"sa.fuente"], type = "s", col = "black", lwd=2, lty =1)
axis(1)
axis(2, las=2)
text(1, 20, "TD = 3")
text(18, 4, "A")
text(18, 0, "FP")
text(18, 3, "T")
text(18, 16, "F")


### TD = 4

plot(apa[which(apa$td==4),"sa.autor"], type = "s", 
     col = "black", lty = 1,
     axes =F, 
     lwd=2,
     xlab = "Número de posts",
     ylab = "Número de errores acumulados",
     ylim = c(0,25),
     xlim = c(0,27))
points(apa[which(apa$td==4),"sa.fecha"], type = "s", col = "magenta", lwd=2, lty = 1)
points(apa[which(apa$td==4),"sa.titulo"], type = "s", col = "blue", lwd=2, lty = 1)
points(apa[which(apa$td==4),"sa.fuente"], type = "s", col = "black", lwd=2, lty =3)
axis(1)
axis(2, las=2)
text(1, 25, "TD = 4")
text(26, 16, "A")
text(26, 23, "FP")
text(26, 4, "T")
text(26, 24, "F")


### TD = 6

plot(apa[which(apa$td==6),"sa.autor"], type = "s", 
     col = "magenta", lty = 1,
     axes =F, 
     lwd=2,
     xlab = "Número de posts",
     ylab = "Número de errores acumulados",
     ylim = c(0,12),
     xlim = c(0,13))
points(apa[which(apa$td==6),"sa.fecha"], type = "s", col = "olivedrab", lwd=2, lty = 1)
points(apa[which(apa$td==6),"sa.titulo"], type = "s", col = "blue", lwd=2, lty = 3)
points(apa[which(apa$td==6),"sa.fuente"], type = "s", col = "black", lwd=2, lty =3)
axis(1)
axis(2, las=2)
text(1, 12, "TD = 6")
text(12, 4, "A")
text(12, 1, "FP")
text(12, 8, "T")
text(12, 10, "F")



### TOTAL

plot(apa[which(apa$td==1),"sa.et"], type = "s", lwd =2, axes = F,xlab = "Número de posts",
     ylab = "Número de errores acumulados",)
points(apa[which(apa$td==2),"sa.et"], type = "s", col = "magenta", lwd=2, lty = 1)
points(apa[which(apa$td==3),"sa.et"], type = "s", col = "red", lwd=2, lty = 1)
points(apa[which(apa$td==4),"sa.et"], type = "s", col = "green", lwd=2, lty = 1)
points(apa[which(apa$td==6),"sa.et"], type = "s", col = "blue", lwd=2, lty = 1)
axis(1)
axis(2, las=2)
text(3, 79, "TOTAL")
text(33, 78, "1")
text(11, 19, "2")
text(18, 24, "3")
text(25, 69, "4")
text(12, 23, "6")

