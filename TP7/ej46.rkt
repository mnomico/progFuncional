#lang racket

(require "ej42.rkt")
(require "ej44.rkt")

#|
Definir una función que acepte una fecha y una cantidad "n" de días, y devuelva una lista con la fecha que será "n" días más adelante.
|#

(define (fechaSiguiente dia mes año diasSiguientes)
    (define dj (diaJuliano dia mes año))
    (define sumaDias (+ dj diasSiguientes))
    (julianoAFecha sumaDias)
)