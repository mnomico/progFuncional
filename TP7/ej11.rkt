#lang racket

#|
    La relación entre los lados (a, b) de un triángulo y la hipotenusa viene dada por la fórmula a^2 + b^2 = h^2.
    Definir una función para que, dadas las longitudes de los lados, calcule y devuelva la hipotenusa.
 		> (pitagoras 3 4)  =>  5
|#

(define (pitagoras a b)
    (define a² (* a a))
    (define b² (* b b))
    (sqrt (+ a² b²))
)