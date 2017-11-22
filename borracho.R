
library( animation  )


# Camino del borracho en dos dimensiones

N <- 100

origen <- c( 0 , 0 ) 


aleatorio_x <- runif( N ) # r := random , # unif := uniforme //
aleatorio_y <- runif( N )

aleatorio_x <- rnorm( N ) # r := random , # norm := normal
aleatorio_y <- rnorm( N )

aleatorio_x <- rbinom( N, size = 1, prob = 0.5 ) # r := random , # norm := normal rbinom(n = 1, size = 1, prob = 0.5)
aleatorio_y <- rbinom( N, size = 1, prob = 0.5 ) #  n = número de observaciones. tamaño = número de ensayos. prob = probabilidad de éxito

aleatorio_x <- rexp( N ) # r := random , # exp := exponencial
aleatorio_y <- rexp( N ) 

hist(aleatorio_x)
hist(aleatorio_y)

recorrido <- data.frame( x= origen[1] , y = origen[2] )

for( i in 2:N ){ 
  
  recorrido[i, ] <- recorrido[i-1,] + c( aleatorio_x[i] , aleatorio_y[i] ) 
  
}

#plot(  recorrido , pch = 20, main = "Camino del borracho")
plot(  recorrido, main = "Camino del borracho")

# write.csv2( recorrido ,  "borracho.csv" , row.names = F )

brownian.motion(n = 10)


hist( recorrido$x )
shapiro.test( recorrido$x )

hist( recorrido$y )
shapiro.test( recorrido$y )
