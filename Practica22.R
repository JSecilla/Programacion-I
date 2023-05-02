#Ejercicio 1
#vamos a crear un algoritmo que nos devuelva cu√°l de dos valores es mayor.
#Primero le damos a las variables los valores que queramos.

#Prueba 1 (a es mayor que b)
a <- 8
b <- 6

if(a > b){
   paste("a es el mayor y vale", a)
}else if (a == b){
  "a y b son iguales"
}else{
  paste("b es el mayor y vale", b)}

#Prueba 2 (b es mayor que a)
a <- 6
b <- 9

if(a > b){
  paste("a es el mayor y vale", a)
}else if (a == b){
  "a y b son iguales"
}else{
  paste("b es el mayor y vale", b)}

#Ejercicio2
#Algoritmo que devuelve el valor absoluto de un n√umero
#Primero nombramos c como el numero cuyo valor absoluto queremos calcular
#creamos un condicional que nos devuelva el valor absoluto del numero, poniendo que cuando este es negativo, se le cambien el signo

#Prueba 1 (Numero negativo)
c <- -10
if(c<0){
  -c
}else{
  c
}

#Prueba 2 (Numero positivo)
c <- 8
if(c<0){
  -c
}else{
  c
}


#Ejercicio3
#Algoritmo que nos devuelva cual es el mayor y menor de 3 valores y si son iguales nos informe de un error

#Prueba 1 (d es el menor y f el mayor)
d <- 4
e <- 5
f <- 30

if(d<e && d<f){
  menor <- d
}else if(e<d && e<f){
  menor <- e
}else {
  menor <- f
}
if(d>e && d>f){
  mayor <- d 
}else if(e>d && e>f){
  mayor <- e
}else {
  mayor <- f
}
if(d==e || d==f || e==f){
  "error hay dos valores iguales"}
paste("El menor valor es", menor)
paste("El mayor valor es", mayor)

#Prueba 2(e es el menor y f es el mayor)
d <- 9
e <- 6
f <- 23

if(d<e && d<f){
  menor <- d
}else if(e<d && e<f){
  menor <- e
}else {
  menor <- f
}
if(d>e && d>f){
  mayor <- d 
}else if(e>d && e>f){
  mayor <- e
}else {
  mayor <- f
}
if(d==e || d==f || e==f){
  "error hay dos valores iguales"}
paste("El menor valor es", menor)
paste("El mayor valor es", mayor)

#Prueba 3(d es el mayor y f es el menor)
d <- 12
e <- 5
f <- 4

if(d<e && d<f){
  menor <- d
}else if(e<d && e<f){
  menor <- e
}else {
  menor <- f
}
if(d>e && d>f){
  mayor <- d 
}else if(e>d && e>f){
  mayor <- e
}else {
  mayor <- f
}
if(d==e || d==f || e==f){
  "error hay dos valores iguales"}
paste("El menor valor es", menor)
paste("El mayor valor es", mayor)

#Prueba 4(Dos valores iguales)
d <- 5
e <- 5
f <- 30

if(d<e && d<f){
  menor <- d
}else if(e<d && e<f){
  menor <- e
}else {
  menor <- f
}
if(d>e && d>f){
  mayor <- d 
}else if(e>d && e>f){
  mayor <- e
}else {
  mayor <- f
}
if(d==e || d==f || e==f){
  "error hay dos valores iguales"}
paste("El menor valor es", menor)
paste("El mayor valor es", mayor)

#Ejercicio 4
#Algoritmo que vaya sumando todos los valores enteros entre el 1 y un valor

#Prueba 1: Tomamos el valor 7
n <- 7
i <- 1
contador <- 0

for(i in 1:n){
  contador= contador+i
}
print(contador)

#Prueba 2: Tomamos el valor 20
n <- 20
i <- 1
contador <- 0

for(i in 1:n){
  contador= contador+i
}
print(contador)

#Ejercicio 5
#Algoritmo que nos dice si un valor es par o impar

#Prueba 1 (para un numero par)
n <- 6
resto <- n%%2
if(resto==0){
  "n es par"
}else{
  "n es impar"
}
#Prueba 2 (para un numero impar)
n <- 9
resto <- n%%2
if(resto==0){
  "n es par"
}else{
  "n es impar"
}

#Ejercicio 6
#Algoritmo que cuente cuantos numeros pares e impares hay en un determinado vector
vector <- c(1,2,3,4,5,7,8,9,9,1,3,4,56,7,9,0,6,32)
NumeroPares <- 0
Numeroimpares <- 0
i <- 1
n <- length(vector)
for(i in 1:n){
  if(vector[i]%%2 == 0){
   NumeroPares= NumeroPares+1
  } else{
    Numeroimpares= Numeroimpares+1
  }
}
paste("hay",NumeroPares,"pares")
paste("hay",Numeroimpares,"impares")

#Ejercicio 7
#A partir de un valor N calcula los primeros tÈrminos de una sucesiÛn con tÈrmino general n*(n+1)/2
N <- 7
n <- 0
for(n in 0:N){
  sucesion <- n*(n+1)/2
  print(sucesion)
}

#Ejercicio 8
#Suma de los primeros n˙meros naturales hasta que la suma sea mayor que el valor dado
i<- 1
n <- 8
contador <- 0
while(contador<=n){
  contador=contador+i
  i= i+1
}
print (contador)
print (i)


