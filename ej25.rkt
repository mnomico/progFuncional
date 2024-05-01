#lang racket

#|
Definir una función para aceptar dos números y devolver el mayor.
  > (mayor 2 3)  =>  3
|#



(define (mayor n1 n2)
    (if (> n1 n2) n1 n2) ; Si n1 > n2, entonces retorno n1. Sino (si n1 <= n2) retorno n2
)