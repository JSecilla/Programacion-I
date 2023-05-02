#Algoritmo que calcule los N primeros numeros pasados por Fibbonacci

Fibonacci <- function(N){
    if(N==0){
    resultado <- c(0)
  }else if(N==1){
    resultado <- c(0,1)
  }else if(N==2){
    resultado <- c(0,1,1)
  }else if(N>=3){
    resultado <- c(0,1,1)
    for(i in 3:N){
      resultado <- c(resultado, resultado[i]+resultado[i-1])
    }
  }
  return(resultado)
}
Fibonacci(0)
Fibonacci(1)
Fibonacci(2)
Fibonacci(3)
Fibonacci(7)


#Algoritmo que escriba la calificaciÃ³n correspondiente a una nota

Calificacion <- function(nota){
  if(nota<0 || nota>10){
    resultado <- "Error la nota tiene que estar entre 0 y 10"
  }else if(nota>=0 && nota<5){
    resultado <- "Suspenso"
  }else if(nota>=5 && nota<7){
    resultado <- "Aprobado"
  }else if(nota>=7 && nota<9){
    resultado <- "Notable"
  }else if(nota>=9 && nota<10){
    resultado <- "Sobresaliente"
  }else{
    resultado <- "Matricula de honor"
  }
  return(resultado)
}
Calificacion(-2)
Calificacion(3)
Calificacion(6)
Calificacion(7)
Calificacion(9.5)
Calificacion(10)
Calificacion(13)

#Algoritmo que diga si un numero es primo o no
Numero_Primo <- function(numero){
 numero <- abs(numero)
  if (numero <=3){
    return("Es primo")
  }
 for (i in 2:(numero-1)) {
   if (numero%%i == 0){
     return("No es primo")
   }
 }
 return("Es primo")
}
Numero_Primo(5)
Numero_Primo(6)
Numero_Primo(27)
Numero_Primo(71)

#Ejercicio 4. Desarrolle un algoritmo que indique cuántos números primos hay en un vector de
#números pasado por parámetro. Debe de utilizar la función realizada en el ejercicio anterior.

contador_primos <- function(vector){
  Contador <- 0
  Contador2 <- 0
  for (i in 1:length(vector)){
    if(Numero_Primo(vector[i])== "Es primo"){
      Contador <- Contador + 1
    }else{
      Contador2 <- Contador2 + 1
    }
  }
  return(paste("Hay", Contador,"primos en el vector y hay", Contador2, "no primos"))
}
contador_primos(c(1,2,3,4,5,6,7,8,9,10,12,14,16))



#Desarrolle un algoritmo que calcule la suma de los cuadrados de los números entre
#dos números pasados por parámetro. Realizar 3 versiones del algoritmo, una para cada tipo de
#bucle (for, while y repeat).

#Versión1 con for
suma_cuadrados <- function(a,b){
  acumulado <- 0
  for(i in a:b){
    acumulado <- acumulado + i^2
  }
  return (acumulado)
}
suma_cuadrados(3,6)

#Version2 con while
suma_cuadrados2 <- function(a,b){
  i <- a
  acumulado <- 0
  while(i <= b){
   acumulado <- acumulado + i^2
   i <- i +1
   }
  return(acumulado)
  }
suma_cuadrados2(3,6)

#version3 con repeat
suma_cuadrados3 <- function(a,b){
  i<- a
  acumulado <- 0
  repeat{
    acumulado <- acumulado + i^2
    i <- i+1
    if(i>b)break
  }
  return(acumulado)
}
suma_cuadrados3(3,6)

#Desarrolle un algoritmo que calcule para los números pasados en un vector de
#números, su promedio, el mayor y menor de esos números. Realizar 3 versiones del algoritmo,
#una para cada tipo de bucle (for, while y repeat).

#Version 1 con for:
Informacion_vector1 <- function(vector){
  n <- length(vector)
  promedio <- 0
  for (i in 1:n){
    promedio <- promedio + vector[i]
  }
  promedio <- promedio/n
  maximo <- 0
  for (i in 1:n){
    if(vector[i]> maximo){
      maximo <- vector[i]
    }else{
      maximo <- maximo
    }
  }
  i <- 1
  minimo <- vector[i]
  for(i in 1:n){
    if(vector[i]< minimo){
      minimo <- vector[i]
    }else{
      minimo <- minimo
    }
  }
  return(paste("Promedio=", promedio, ", Maximo=", maximo, ", Minimo=", minimo))
}
Informacion_vector1(c(9,6,11,12))  

#Version 2 con while:

Informacion_vector2 <- function(vector){
  i <- 1
  n <- length(vector)
  promedio <- 0
  while (i <= n){
    promedio <- promedio + vector[i]
    i<- i+1
  }
  promedio <- promedio/n
  i <- 1
  maximo <- 0
  while(i <= n){
    if(vector[i]> maximo){
      maximo <- vector[i]
      i <- i+1
    }else{
      maximo <- maximo
      i<-i+1
    }
  }
  i <- 1
  minimo <- vector[i]
  while(i <= n){
    if(vector[i]< minimo){
     minimo <- vector[i]
     i <- i+1
    }else{
      minimo <- minimo
      i <- i+1
    }
  }
  
  return(paste("Promedio=", promedio,"Maximo=", maximo,"Minimo=", minimo))
}

Informacion_vector2(c(12,3,5,2,1,6,4))

#version 3 con repeat:

Informacion_vector3 <- function(vector){
  i <- 1
  n <- length(vector)
  promedio <- 0
  repeat{
    promedio <- promedio + vector[i]
    i <- i +1
    if(i>n)break
  }
  promedio<- promedio/n
  i <- 1
  maximo <- 0
  repeat{
    if(vector[i]>maximo && i<=n){
      maximo <- vector[i]
      i <- i+1
    } else if(vector[i]<maximo && i<=n){
     maximo <- maximo
  } else break
  }
  i <- 1
  minimo <- vector[i]
  repeat{
    if(vector[i]<minimo && i<=n){
      minimo <- vector[i]
      i <- i+1
    } else if(vector[i]> minimo && i<=n){
      minimo <- minimo
      i <- i+1
    } else break
  }
  return(paste("Promedio=", promedio,"Maximo=", maximo, "Minimo=", minimo))
}
Informacion_vector3(c(1,2,3,4,5))

#Ejercicio 7. Desarrolle un algoritmo que dado un vector de números, devuelva otro vector con
#los números ordenados.

Ordenar_Vector <- function(vector){
  for(i in 1:(length(vector)-1)){
    for(h in (i+1):length(vector)){
      if(vector[i]>vector[h]){
        aux <- vector[i]
        vector[i] <- vector[h]
        vector[h] <- aux
      }
    }
  }
  return(vector)
}
Ordenar_Vector(c(2,1,5,3,4,8))
Ordenar_Vector(c(30,50,22,1,1,3,2,4,5,7,31,1,5,85,4,8,907,32,134))
#Ejercicio 8. Desarrolle un algoritmo que calcule el máximo común divisor de dos números
#mediante la implementación del siguiente teorema (algoritmo de Euclides):
 # "Si a y b son enteros positivos con a>=b, y si a=q*b+r con 0<r<b (q=cociente y r=resto),
#entonces M.C.D.(a, b) = M.C.D.( b, r )."

MCD <- function(a,b){
  if(a < b){
    c <- a
    a <- b
    b <- c
  }
  dividendo <- a
  divisor <- b
  while(divisor != 0){
    resto <- dividendo%%divisor
    dividendo <- divisor
    divisor <- resto
  }
  return(dividendo)
}
MCD(5,15)
MCD(2,4)
MCD(1,23)
