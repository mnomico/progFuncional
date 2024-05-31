#lang racket

#|
Definir una función que acepta una lista y dos átomos "a" y "b", y devuelve otra lista con los elementos de la primera, pero con el átomo "a" sustituido por el "b", en su primera ocurrencia.
; (sustituida1 elB elR lista)
> (sustituida1 'd 'a '(a b c d e d f)) => (a b c a e d f)
|#

(define (sustituida1 a b lista)
    (cond
        [(empty? lista) '()]
        [(equal? a (first lista)) (cons b (rest lista))]
        [else (cons (first lista) (sustituida1 a b (rest lista)))]
    )
)