#lang racket

#|
Escribir una función que acepte una lista de números enteros y devuelva la cantidad de números naturales que contiene la lista.
; (cantidadNaturales lista)
> (cantidadNaturales ‘(-1 2 3 -4 5 0 2))  => 4
|#

; natural? cuenta 0 como natural
(define (cantidadNaturales lista)
    (cond
        [(empty? lista) 0]
        [(natural? (first lista)) (+ (cantidadNaturales (rest lista)) 1)]
        [else (cantidadNaturales (rest lista))]
    )
)