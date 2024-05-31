#lang racket

#|
Escribir una función que acepte una lista numérica y devuelva la sumatoria de la misma.
; (sumatoria lista)
> (sumatoria ‘(1 2 3 4 5))  => 15
|#

(define (sumatoria lista)
    (cond
        [(empty? lista) 0]
        [else (+ (first lista) (sumatoria (rest lista)))]
    )
)