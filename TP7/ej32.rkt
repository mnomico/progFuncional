#lang racket

#|
Escribir un predicado que acepta tres números y devuelve #T si dos de ellos son iguales.
|#

(define (repetido? X Y Z)
    (or
        (= X Y)
        (= Y Z)
        (= Z X)
    )
)