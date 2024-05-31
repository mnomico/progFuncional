#lang racket

#|
Dada una lista numérica y un número N, devuelve una lista con los elementos mayores que N.
; (xMayores lista valor)
> (xMayores '(1 8 3 4 5 2 7) 4) => (5 6 7)
|#

(define (xMayores lista valor)
    (cond
        [(empty? lista) '()]
        [(> (first lista) valor) (cons (first lista) (xMayores (rest lista) valor))]
        [else (xMayores (rest lista) valor)]
    )
)