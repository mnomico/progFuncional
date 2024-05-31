#lang racket

#|
Dada una lista numérica y un número N, devuelve una lista con los elementos menores que N.
; (xMenores lista valor)
> (xMenores '(1 8 3 4 5 2 7) 4) => (1 2 3)
|#

(define (xMenores lista valor)
    (cond
        [(empty? lista) '()]
        [(< (first lista) 4) (cons (first lista) (xMenores (rest lista) valor))]
        [else (xMenores (rest lista) valor)]
    )
)