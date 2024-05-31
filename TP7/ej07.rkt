#lang racket

#| Escribir una función que, dada una temperatura en grados Celsius, retorne su valor expresado en grados Fahrenheit. La fórmula de conversión es f = (9/5) . c + 32
        > (c2f c) => 39 1/5
|#

;f = (9/5) . c + 32

(define (c2f c) 
        (+ (* c 9/5) 32)
)