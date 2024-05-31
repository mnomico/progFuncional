#lang racket

#|
Dada una lista y un número N, devuelve los N últimos elementos de L.
; (nUltimos cantidad lista)
> (nUltimos 3 '(71 82 23 14 25 6)) => (14 25 6)
|#

(define (longitud lista)
    (cond
        [(empty? lista) 0]
        [else (+ (longitud (rest lista)) 1)]
    )
)

(define (nUltimos cantidad lista)
    (cond
        [(= cantidad 0) '()]
        [(= cantidad (longitud lista)) lista]
        [else (> cantidad (longitud lista)) (nUltimos cantidad (rest lista))]
    )
)