#lang racket

#|
Escribir una función que acepte una lista de números enteros y devuelva la cantidad de números naturales que contiene la lista.
; (cantidadNaturales lista)
> (cantidadNaturales ‘(-1 2 3 -4 5 0 2))  => 4
|#

(define (calcularNaturales lista cantidad)
    (cond
        [(empty? lista) cantidad]
        [(and (number? (first lista)) (> (first lista) 0)) (calcularNaturales (rest lista) (+ cantidad 1))]
        [else (calcularNaturales (rest lista) cantidad)]
    )
)

(define (cantidadNaturales lista)
    (calcularNaturales lista 0)
)