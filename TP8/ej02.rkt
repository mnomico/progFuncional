#lang racket

#|
Escribir una función que acepte una lista y devuelva la cantidad de elementos de esa lista.
; (tamano lista)
> (tamano ‘(a b c d e))  => 5
|#

(define (tamaño lista)
    (cond
        [(empty? lista) 0]
        [else (+ (tamaño (rest lista)) 1)]
    )
)