
library(readxl)

datos <- read_excel("ReservaMin.xlsx")

RMatematica <- datos$`Reserva Matemática`
RMinima <- datos$`Reserva Mínima`
Tiempo <- datos$Tiempo


plot(Tiempo,RMinima,main='Reservas',xlab='Tiempo',ylab='Reserva',
     col="dodgerblue3",bg="dodgerblue3",pch=21, type='b')
#ylim(0,200000)
lines(x=Tiempo,y=RMatematica,col="darkorange1",bg="darkorange1",pch=21, type='b')
text(20,100000,labels='Igualdad')
points(20,datos$`Reserva Matemática`[20],col='red',bg='red',pch=21) #
abline(v=20,col="red")
legend('topright', legend=c('Reserva Matemática', 'Reserva Mínima'),col=c("darkorange1","dodgerblue3"))
