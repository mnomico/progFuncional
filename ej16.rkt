#lang racket

#|
    Definir una función que acepte dos números enteros, y devuelva una lista con el cociente y el resto la división entera entre los dos números.
        > (dcyr 100 15)  => '(6 10)
|#

(define (dcyr dividendo divisor)
    (list
        (quotient dividendo divisor)
        (remainder dividendo divisor)
    )
)