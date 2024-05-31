#lang racket

#|
Escribir un predicado que acepte un elemento y una lista, y devuelva #T si el elemento pertenece a la lista.
; (pertenece elemento lista)
> (pertenece ‘c ‘(a b c d e))  => #t
> (pertenece ‘g ‘(a b c d e))  => #f
|#

(define (pertenece elemento lista)
    (cond
        [(empty? lista) #f]
        [(equal? elemento (first lista)) #t]
        [else (pertenece elemento (rest lista))]
    )
)