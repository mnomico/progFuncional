#lang racket

#|
Definir una función que acepte dos listas y devuelva una lista que sea la concatenación de las mismas.
; (concatenadas lista1 lista2)
> (concatenadas '(a b c) '(d e)) => (a b c d e)
|#

(define (concatenadas lista1 lista2)
    (cond
        [(empty? lista1) lista2]
        [else (cons (first lista1) (concatenadas (rest lista1) lista2))]
    )
)