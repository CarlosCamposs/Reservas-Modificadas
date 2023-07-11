library(readxl)

datos <- read_excel("ReservaMin.xlsx")

RMatematica <- datos$`Reserva Matemática`
RMinima <- datos$`Reserva Mínima`
Tiempo <- datos$Tiempo

# Grafico en README de GitHub
# ------------------------------------------------------------------------------

##### Puntos y rayas

plot(Tiempo,RMinima,main='Reservas',xlab='Tiempo',ylab='Reserva',
     col="dodgerblue3",bg="dodgerblue3",pch=21, type='b',
     ylim = c(0,200000))#b
#abline(h=c(0,25000,50000,75000,100000,125000,150000,175000,200000),col="gray")
#lines(x=Tiempo,y=RMinima,col="dodgerblue3",bg="dodgerblue3",pch=21, type='h',lwd=3)
lines(x=Tiempo,y=RMatematica,col="darkorange1",bg="darkorange1",pch=21, type='b')
#lines(x=Tiempo,y=RMatematica,col="darkorange1",bg="darkorange1",pch=21, type='h',lwd=3)
par(bg = "#f7f7f7")
lines(x=Tiempo,y=RMatematica,col="darkorange1",bg="darkorange1",pch=21, type='b')
legend('topleft',col=c('darkorange1','dodgerblue3'), legend=c('Reserva Matemática', 'Reserva Mínima'),
       lty=2,bty = "n")
text(20,RMatematica[20]+10000,labels=expression(V[30]^{min}==V[30]),col='red')
points(20,datos$`Reserva Matemática`[20],col='red',bg='red',pch=21,cex=1.5)

# ------------------------------------------------------------------------------

##### Otra visualizacion pero como si fuera histograma

plot(Tiempo,RMinima,main='Reservas',xlab='Tiempo',ylab='Reserva',
     col="dodgerblue3",bg="dodgerblue3",pch=21, type='s',
     ylim = c(0,200000))#b
lines(x=Tiempo,y=RMatematica,col="darkorange1",bg="darkorange1",pch=21, type='s')
legend('topleft',col=c('darkorange1','dodgerblue3'), legend=c('Reserva Matemática', 'Reserva Mínima'),
       lty=2,bty = "n")#
text(20,RMatematica[20]+10000,labels=expression(V[30]^{min}==V[30]),col='red')
points(20,datos$`Reserva Matemática`[20],col='red',bg='red',pch=21,cex=1.5) #

# ------------------------------------------------------------------------------

##### Esta es la que aparece en GITHUB
par(bg = 'gray100')
plot(Tiempo,RMatematica,main='Reservas',xlab='Tiempo',ylab='Reserva',
     col="darkorange1",bg="darkorange1",pch=21, type='h',lwd=10,
     ylim = c(0,200000))#b
lines(x=Tiempo,y=RMinima,col="skyblue1",bg="skyblue1",pch=21, type='h',lwd=8)
legend('topleft',col=c('darkorange1','skyblue1'), legend=c('Reserva Matemática', 'Reserva Mínima'),
       lty=1,bty = "n",lwd=5)#
text(20,RMatematica[20]+10000,labels=expression(V[30]^{min}==V[30]),col='red')
points(20,datos$`Reserva Matemática`[20],col='red',bg='red',pch=21,cex=1.5) #

# ------------------------------------------------------------------------------


