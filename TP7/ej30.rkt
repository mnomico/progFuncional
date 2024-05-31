#lang racket

#|
Escribir un predicado que acepta tres números y devuelve #T si los tres números son iguales.
  > (iguales 2 2 2)  =>  #t
  > (iguales 2 3 4)  =>  #f
|#

(define (iguales X Y Z)
    (= X Y Z)
)