#lang racket

#| Definir una función “circunferencia”, que dado el radio retorne la longitud de la misma.
> (circunferencia 4)  =>  25.132741228718345 
|#

(define (circunferencia radio)
    (* 2 pi radio)
)