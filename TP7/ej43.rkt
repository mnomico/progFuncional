#lang racket

(require "ej42.rkt")

#|
Preparar una función que acepte dos fechas como DIA1, MES1, AÑO1, y DIA2, MES2, AÑO2 respectivamente, y devuelva la cantidad de días transcurridos entre ambas.
|#

(define (diasTranscurridos dia1 mes1 año1 dia2 mes2 año2)
    (define diaJuliano1 (diaJuliano dia1 mes1 año1))
    (define diaJuliano2 (diaJuliano dia2 mes2 año2))
    (abs (- diaJuliano2 diaJuliano1))
)