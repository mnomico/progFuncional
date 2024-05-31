#lang racket

(require "ej44.rkt")

#|
Definir una función que acepte un día juliano y devuelva el día de la semana. Las fórmulas son:
    DS = modulo((DIAP + 5) / 7)
donde
    DS = 0  ---->  domingo
 	DS = 1  ---->  lunes
   	.....
   	DS = 6  ---->  sábado
|#

(define (diaJulianoSemana diaJuliano)
    (define diap (getdiap diaJuliano))
    (modulo (+ diap 5) 7)
)