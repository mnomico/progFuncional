#lang racket

#|
    Definir una función que dada la base y la altura de un triángulo devuelva el valor del área.
 		> (superficieTriangulo 2 4)  =>  4
|#

(define (superficieTriangulo base altura)
    (* 1/2 base altura)
)