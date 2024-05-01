#lang racket

#|
Definir un predicado que acepta un número y devuelve #T si ese número es divisible por tres y #F de otro modo.
  > (divisiblePor3 6)  =>  #t
  > (divisiblePor3 5)  =>  #f
|#

(define (divisiblePor3 numero)
    (= (modulo numero 3) 0)
)