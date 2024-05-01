#lang racket

#|
En un grupo de tres personas hay un joven menor de edad y dos mayores de edad (+18). Construir una función para ingresarle las tres edades y devuelva la edad del joven.  
    > (jovenYAdultos 15 20 25)  =>  15
|#

(define (menorDeEdad edad)
    (< edad 18)                 ; Si es menor de edad retorno true, sino false
)

(define (jovenYAdultos X Y Z)
    (cond
        [(menorDeEdad X) X]                 ; Si X es menor de edad, retorno X
        [(menorDeEdad Y) Y]
        [(menorDeEdad Z) Z]
        [else "No hay menores de edad."]
    )
)