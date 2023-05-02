#Ejercicio 1 Producto de los valores de una matriz
Matriz_Producto <- function(Matriz){
  columnas <- ncol(Matriz)
  contador <- 1
  i <- 1
  producto <- 1
  repeat{ 
    contador <- contador * Matriz[,i]
    i <- i +1
    if(i > columnas) break
  } 
  for(h in 1:length(contador)){
    producto <- producto * contador[h]
  }
  
  return(producto)
       }

Matriz_Producto(matrix(c(2,4,3,5,3,5,2,4,5), 3, 3))

#Ejercicio 2
#Nos devuelve el numero maximo de cada fila de la matriz
filmax<-function(A) {
  v=c()
  for (i in 1:nrow(A)) {
    for (j in 1:ncol(A)) {
      max=A[i,1] 
      if (A[i,j]>max) {
        max=A[i,j]
      }
    }
    v=c(v,max)
  }
  return(v)
}
filmax(matrix(1:10, ncol=2,nrow = 5))
filmax(matrix(1:24, ncol=6, nrow=4))

#Ejercico 3

esprimo<-function(numero){
  resultado<-"es primo"
  if(numero>3){
    for(i in 2:(numero-1)) {
      if(numero%%i==0){
        resultado="no es primo"
      }
    }
  }
  return(resultado)
}
par<-function(x){
  par=0
  for(i in 1:length(x)){
    if(x[i]%%2==0){
      par=par+1;
    }
  }
  return(par)
}

vectoresprimo<-function(tabla){
  numeroprimo=0
  for(i in 1:length(tabla)){
    if(esprimo(tabla[i])=="es primo"){
      numeroprimo=numeroprimo + 1;
      
    }
  }
  return(numeroprimo)
}

vector<-function(par,primo){
  vector=c(par,primo)
  vector=0
  x[1]=par
  x[2]=primo
  return(vector)
} 
Paresyprimos <- function(matriz){
  
vector<-c(par(matriz),vectoresprimo(matriz))
return(vector)
}
Paresyprimos(matrix(c(3,7,8,3,2,1,8,9,10),nrow = 3, ncol = 3))


#Ejercicio4
#Desarrollamos una función que reciba dos matrices de dos dimensiones y devuelva TRUE si son exactamente iguales, o FALSE en caso contrario.

matrices_iguales<- function(x, y) {
  f1 <- dim(x)[1];
  f2 <- dim(y)[1];
  c1 <- dim(x)[2];
  c2 <- dim(y)[2];
  if (f1 == f2 && c1 == c2) {
    for (f1 in 1:f1) {
      for (c1 in 1:c1) {
        if(x[f1, c1] != y[f1, c1]) {
          return(FALSE)
        }
      }
    }
    return (TRUE)
  } else {
    return("Diferentes dimensiones")
  }
}

matrices_iguales(matrix(seq(1:6), nrow = 2, ncol = 3), matrix(c(2, 3, 4, 5, 6, 7) ,nrow = 2, ncol = 3))
matrices_iguales(matrix(c(2, 3, 4, 5, 6, 7) ,nrow = 2, ncol = 3), matrix(c(2, 3, 4, 5, 6, 7) ,nrow = 2, ncol = 3))


#Ejercicio5
#Desarrolle una función que realice una multiplicación de dos matrices d 
  
producto_matrices<- function(matriz1,matriz2){
    
  if(ncol(matriz1)== nrow(matriz1)){
      
   resultado= matrix(0,nrow=nrow(matriz1), ncol=ncol(matriz2))
      
    for(fila in 1: nrow(matriz1)){
     for(columna in 1: ncol(matriz2)){
          
      for(columnasfila in 1: ncol(matriz1)){
            
        resultado[fila,columna] = resultado[fila,columna] + matriz1[fila,columnasfila]*matriz2[columnasfila,columna]
            
       }
          
     }
  }
      
  }else{
      
      return("las matrices no se pueden multiplicar")
    }
    return(resultado)
  }

producto_matrices(matrix(c(4,2,5,6), nrow=2,byrow=T), matrix(c(9,2,6,3),nrow=2,byrow=T))

#Ejercico 6
help("write")

a <- matrix(1:10, ncol=2, byrow= T) 
colnames(a)<- c("Sevilla","Betis")
write(a, "C:\\Users\\jsm01\\OneDrive\\Escritorio\\2ºCuatrimestre\\Programacion 1\\Practica 4\\ficheroprueba1")
#Se nos abre un fichero de texto con los numero de la matriz puestos en orden

write(a, "C:\\Users\\jsm01\\OneDrive\\Escritorio\\2ºCuatrimestre\\Programacion 1\\Practica 4\\ficheroprueba2", ncol=2)
#Se nos abre un fichero de la misma forma del anterior pero en este caso los datos estan organizados en dos columnas como bien hemos indicado

write.table(a, "C:\\Users\\jsm01\\OneDrive\\Escritorio\\2ºCuatrimestre\\Programacion 1\\Practica 4\\ficheroprueba3")
#En este caso al escirbir la funcion table, se nos abre el editor de texto pero cada columnas y cada fila con el nombre indicado, como podría pasar con una tabla

write.csv(a, "C:\\Users\\jsm01\\OneDrive\\Escritorio\\2ºCuatrimestre\\Programacion 1\\Practica 4\\ficheroprueba4")
#Se nos abre una tabla al igual que en el anterior, pero ahora todos los datos estan separados por comas en vez de por espacios

write.csv2(a, "C:\\Users\\jsm01\\OneDrive\\Escritorio\\2ºCuatrimestre\\Programacion 1\\Practica 4\\ficheroprueba5")
#si los abrimos con el bloc de notas, es exactamente igual que el anterior pero ahora los datos estan separados por un ; en vez de por comas
#Si los abrimos con excel, se nos abre una tabla con la informacion en una columna y varias filas

datos <-scan("C:\\Users\\jsm01\\OneDrive\\Escritorio\\2ºCuatrimestre\\Programacion 1\\Practica 4\\datos_prueba.txt", sep = ";")
#Prueba de la funcion scan, ademas añadí ; entre los numero para probar el parametro sep

#ahora vamos a usar la funcion read.table, vamos a leer los ficheros generados en los anteriores apartados
read.table("C:\\Users\\jsm01\\OneDrive\\Escritorio\\2ºCuatrimestre\\Programacion 1\\Practica 4\\ficheroprueba1")
read.csv("C:\\Users\\jsm01\\OneDrive\\Escritorio\\2ºCuatrimestre\\Programacion 1\\Practica 4\\ficheroprueba4")
read.csv2("C:\\Users\\jsm01\\OneDrive\\Escritorio\\2ºCuatrimestre\\Programacion 1\\Practica 4\\ficheroprueba5")
#Vemos que nos lee los tres archivos como tablas iguales.

#Vamos a crear una tabla con los datos de peso y altura de 5 individuos y se lo vamos a asignar a la variable datos
datos <- read.table("C:\\Users\\jsm01\\OneDrive\\Escritorio\\2ºCuatrimestre\\Programacion 1\\Practica 4\\pesosyaltura.txt")
colnames(datos)
rownames(datos)
help("read.table")
print(datos)

#Vamos a crear la misma tabla pero en este caso con excel y vamos a ver como abriendolo con read.csv en vez de read.table, llegamos a la misma tabla
read.csv("C:\\Users\\jsm01\\OneDrive\\Escritorio\\2ºCuatrimestre\\Programacion 1\\Practica 4\\pesosyaltura2.csv", sep=";")
read.csv2("C:\\Users\\jsm01\\OneDrive\\Escritorio\\2ºCuatrimestre\\Programacion 1\\Practica 4\\pesosyaltura2.csv", sep=";")

