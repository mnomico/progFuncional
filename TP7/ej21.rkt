#lang racket

#|
Definir un predicado que acepta un número y devuelve #T si ese número es par.
   > (par 4)  =>  #t
   > (par 5)  =>  #f
|#

(define (par numero)
    (= (modulo numero 2) 0)
)