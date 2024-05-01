#lang racket

#|
    Definir una función que acepte los coeficientes de un sistema de dos ecuaciones con dos incógnitas:
    a11 * x1 + a12 * x2 = b1
    a21 * x1 + a22 * x2 = b2
    y devuelva una lista con los valores de las incógnitas.
 		> (resuelveSistema 1 2 3 4 5 6)  =>  (-1 2)
|#

#|
    (resuelveSistema a11 a12 b1 a21 a22 b2)
    a11 * x1 + a12 * x2 = b1    =>      
    a21 * x1 + a22 * x2 = b2    =>
|#

(define (resuelveSistema a11 a12 b1 a21 a22 b2)

)