#lang racket

#|
Dada una lista numérica y un elemento X, devuelve una lista con los elementos siguientes a X.
; (siguientes valor lista)
> (siguientes 4 '(1 8 3 4 5 2 7)) => (5 2 7)
|#

(define (siguientes valor lista)
    (cond
        [(= valor 0) lista]
        [else (siguientes (- valor 1) (rest lista))]
    )
)