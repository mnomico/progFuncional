#lang racket

#|
Definir una función que acepta una lista y dos átomos "a" y "b", y devuelve otra lista con los elementos de la primera, pero con el átomo "a" sustituido por el "b", en su primera ocurrencia.
; (sustituida1 elB elR lista)
> (sustituida1 'd 'a '(a b c d e d f)) => (a b c a e d f)
|#

(define (sustituir a b listaNueva listaOriginal)
    (cond
        [(empty? listaOriginal) listaNueva]
        [(equal? a (first listaOriginal)) (cons listaNueva (cons b (rest listaOriginal)))]
        [else (sustituir a b (cons listaNueva (first listaOriginal)) (rest listaOriginal))]
    )
)

(define (sustituida1 a b lista)
    (sustituir a b '() lista)
)