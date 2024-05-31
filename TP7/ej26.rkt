#lang racket

#|
Definir un predicado que acepta dos números y devuelve #T si el segundo es múltiplo del primero.
  > (multiplo 2 6)  =>  #t
  > (multiplo 6 2)  =>  #f
|#

(define (multiplo n1 n2)
    (= (modulo n2 n1) 0)
)