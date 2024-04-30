#lang racket

#|
    Definir una función que acepte los coeficientes a, b y c de la ecuación de primer grado
    a * x + b = c, y devuelva el valor de la raíz.
	> (raiz 3 4 5)  =>  1/3
|#

; a * x + b = c
; (c - b) / a = x

(define (raiz a b c)
    (/ (- c b) a)
)