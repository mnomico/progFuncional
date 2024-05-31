#lang racket

#|
Dada una lista y un número N, devuelve los N primeros elementos de L.
; (nPrimeros cantidad lista)
> (nPrimeros 4 '(6 5 1 2 4 7)) => (6 5 1 2)
|#

(define (nPrimeros cantidad lista)
    (cond
        [(= cantidad 0) '()]
        [else (cons (first lista) (nPrimeros (- cantidad 1) (rest lista)))]
    )
)