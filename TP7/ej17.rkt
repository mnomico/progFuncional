#lang racket

#|
    Definir una función que, dada una cantidad de segundos, devuelva una lista con la misma cantidad expresada en horas, minutos y segundos.
        > (hms 7200)  =>  (2 0 0) 
|#

; Función para calcular las horas
(define(segundosAHoras segundos)
    (quotient segundos 3600)    ; Para pasar de segundos a minutos hay que dividir a los segundos por 60, y para pasar de minutos a horas también, 
                                ; entonces para pasar de segundos a horas directamente, divido los segundos por 60 * 60 = 3600
)

; Función para calcular los minutos restantes que no llegan a formar una hora
; Ejemplo: 64 minutos = 1 hora 4 minutos
(define (segundosAMinutos segundos)
    (remainder
        (quotient segundos 60)  ; Convierto los segundos en minutos
        60                      ; Divido por 60 para convertirlos en horas, y me quedo con el resto
    ) 
)

; Función para calcular los segundos restantes que no llegan a formar un minuto
; Ejemplo: 84 segundos = 1 minuto 24 segundos
(define (segundosRestantes segundos)
    (remainder segundos 60)     ; Divido por 60 para convertirlos en minutos y me quedo con el resto
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