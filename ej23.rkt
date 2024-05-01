#lang racket

#|
Definir un predicado que acepta un número y devuelve #T si ese número es divisible por seis, un número es divisible por seis si es divisible por dos y por tres.
  > (divisiblePor6 6)  =>  #t
  > (divisiblePor6 10)  =>  #f
|#

(define (par numero)
    (= (modulo numero 2) 0)
)

(define (divisiblePor3 numero)
    (= (modulo numero 3) 0)
)

(define (divisiblePor6 numero)
    (and
        (par numero)
        (divisiblePor3 numero)
    )
)