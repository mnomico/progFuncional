#lang racket

#|
Dada una lista numérica y un elemento X, devuelve una lista con los elementos anteriores a X.
; (anteriores valor lista)
> (anteriores 4 '(1 8 3 4 5 2 7)) => (1 8 3)
|#

(define (anteriores valor lista)
    (cond
        [(<= valor 1) '()]
        [else (cons (first lista) (anteriores (- valor 1) (rest lista)))]
    )
)