#R commands for MSE (three different estimators for p). 

p <- seq(0,1,.01)
n <- 100

mse1 <- p*(1-p)/n

mse2 <- p*(1-p)/n + .0009

mse3 <- n*p*(1-p)/106^2 + ((n*p-106*p+3)/106)^2
 
plot(p, mse2, type="l", col="blue", lwd=3, ylim=c(0,.0035), ylab="MSE")
points(p, mse1, type="l", col="green", lwd=3)
points(p, mse3, type="l", col="purple", lwd=3)
