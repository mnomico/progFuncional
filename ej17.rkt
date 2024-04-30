#lang racket

#|
    Definir una función que, dada una cantidad de segundos, devuelva una lista con la misma cantidad expresada en horas, minutos y segundos.
        > (hms 7200)  =>  (2 0 0) 
|#

(define(segundosAHoras segundos)
    (quotient segundos 3600)
)

(define (segundosAMinutos segundos)
    (remainder
        (quotient segundos 60)
        60
    )
)

(define (segundosRestantes segundos)
    (remainder segundos 60)
)

; Función principal
(define (hms segundos)
    (define horas (segundosAHoras segundos))
    (define minutos (segundosAMinutos segundos))
    (define restoSegundos (segundosRestantes segundos))
    (list
        horas
        minutos
        restoSegundos
    )
)