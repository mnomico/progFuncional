#lang racket

#|
Definir una función que acepta una lista devuelve el último elemento de la misma.
; (ultimo lista)
> (ultimo ‘(a b c d e))  => e
|#

(define (ultimo lista)
    (cond
        [(empty? lista) '()]
        [(empty? (rest lista)) (first lista)]
        [else (ultimo (rest lista))]
    )
)