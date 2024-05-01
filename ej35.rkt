#lang racket

#|
Suponiendo los días de la semana numerados como domingo:1, lunes:2, etc., aceptar un número entre 1 y 7 y devolver el día de la semana correspondiente.
|#

; Función recursiva. Le paso el número del día que quiero encontrar, y una lista con los días de la semana.
(define (encontrarDia numero dias)
    (cond
        [(= numero 1) (car dias)]                       ; Caso base. Cuando numero es 1, retorno la cabeza de la lista
        [else (encontrarDia (- numero 1) (cdr dias))]   ; Si numero es diferente de 1, hago la llamada recursiva decrementando numero y la cola de la lista "dias"
    )
)

(define (numeroADia numero)
    (define dias '("domingo" "lunes" "martes" "miercoles" "jueves" "viernes" "sabado")) ; Defino la lista con los días de la semana
    (cond
        [(and (number? numero) (<= numero 7) (>= numero 1)) ; Verifico que el dato ingresado sea un número y esté entre 1 y 7
            (encontrarDia numero dias)]                     ; Si es así, llamo a encontrarDia
        [else
            "Error. El número ingresado no es válido."      ; Sino, retorna error
        ]
    )
)