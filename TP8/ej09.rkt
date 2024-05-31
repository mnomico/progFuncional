#lang racket

#|
Escribir una función que acepta dos átomos A y B y una lista C, y devuelve una lista D, tal que D es igual a C, pero con el átomo A sustituido por el B, en todas sus ocurrencias.
; (sustituida elementoBuscado elementoReemplazo lista)
> (sustituida 'd 'a '(a b c d e d f)) => (a b c a e a f)
|#

(define (sustituida A B lista)
    (cond
        [(empty? lista) '()]
        [(equal? A (first lista)) (cons B (sustituida A B (rest lista)))]
        [else (cons (first lista) (sustituida A B (rest lista)))]
    )
)