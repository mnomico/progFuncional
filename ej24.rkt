#lang racket

#|
Definir un predicado que acepta un número real y devuelve #T si ese número pertenece al intervalo [0,1].
  > (entre0y1 0.5)  =>  #t
  > (entre0y1 1.1)  =>  #f
|#

(define (entre0y1 numero)
    (and
        (real? numero)
        (<= numero 1)
        (>= numero 0)
    )
)