#lang racket

#|
Escribir una función que acepte una lista y devuelva la cantidad de elementos de esa lista.
; (tamano lista)
> (tamano ‘(a b c d e))  => 5
|#

(define (largoLista lista largo)
    (cond
        [(empty? lista) largo]
        [else (largoLista (rest lista) (+ largo 1))]
    )
)

(define (tamaño lista)
    (largoLista lista 0)
)