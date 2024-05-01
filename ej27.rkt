#lang racket

#|
Definir un predicado que acepta dos números y devuelve #T si el segundo es múltiplo del primero o viceversa.
  > (multiploODivisor 2 6)  =>  #t
  > (multiploODivisor 6 3)  =>  #t
|#

(define (multiplo n1 n2)
    (= (modulo n2 n1) 0)
)

(define (multiploODivisor n1 n2)    ; Utilizando el ejemplo 
    (or
        (multiplo n1 n2)            ; Pregunto si 2 es múltiplo de 6 / si 6 es múltiplo de 3
        (multiplo n2 n1)            ; Pregunto si 6 es múltiplo de 2 / si 3 es múltiplo de 6
    )
)