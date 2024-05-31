#lang racket

#|
Escribir una función "estaEntre", que acepta dos números enteros m y n, y devuelve la lista de los enteros mayores o iguales que m y menores o iguales que n.
; (estaEntre m n)
> (estaEntre 2 5)  => ‘(2 3 4 5)
|#

(define (listaEntre m n lista)
    (cond
        [(> m n) lista]
        [else (listaEntre m (- n 1) (cons n lista))]
    )
)

(define (estaEntre m n)
    (cond
        [(>= m n) '(Error.)]
        [else (listaEntre m n '())]
    )
)