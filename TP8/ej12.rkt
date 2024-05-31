#lang racket

#|
Dada una lista y un número N, devuelve una lista con los elementos a partir de la posición n (sin tomar el elemento de la posición n).
; (aPartirN indice lista)
> (aPartirN 3 '(7 6 5 4 3 2)) => (4 3 2)
|#

(define (longitud lista)
    (cond
        [(empty? lista) 0]
        [else (+ (longitud (rest lista)) 1)]
    )
)

(define (aPartirN indice lista)
    (cond
        [(= indice 0) lista]
        [else (aPartirN (- indice 1) (rest lista))]
    )
)