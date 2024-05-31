#lang racket

#|
Escribir una función que acepte una lista numérica y devuelva la sumatoria de la misma.
; (sumatoria lista)
> (sumatoria ‘(1 2 3 4 5))  => 15
|#

(define (sumatoriaLista lista suma)
    (cond
        [(empty? lista) suma]
        [else (sumatoriaLista (rest lista) (+ suma (first lista)))]
    )
)

(define (sumatoria lista)
    (sumatoriaLista lista 0)
)