#lang racket

#|
Números Primos
 	Divisores
    Escribir una función "divisor" que acepta un número "n" y un candidato a divisor "c", devolviendo TRUE cuando c es divisor de "n" y "NIL" de otro modo.
 	Números primos
    Definir una función que acepte un número "n", y devuelva T cuando "n" es primo, y nil en otro caso.
|#

; Función que determina si c es divisor de n
(define (divisor n c)
    (cond
        [(= (modulo n c) 0) 'TRUE]
        [else 'NIL]
    )
)

; Función que determina si un número n es primo a partir de su raíz
(define (comprobarPrimo n raizN)
    (cond
        [(= raizN 1) 'T]                          ; Si no se encuentran numeros menores a la raíz de n que sean divisores de n, entonces es un número primo
        [(equal? (divisor n raizN) 'TRUE) 'nil]   ; Si un número entre 1 y la raiz de n es divisor de n, entonces n no es primo
        [else (comprobarPrimo n (- raizN 1))]     ; Llamada recursiva en la que paso como parámetro n y (raizN - 1)
    )
)

; Función principal
(define (primo? n)
    (define raizN (exact-floor (sqrt n)))   ; Calculo la raiz de n para saber hasta que número tengo que comprobar para saber si es primo
    (cond
        [(= n 1) 'nil]  ; Si n = 1 entonces no es primo, porque un número primo es aquel que tiene dos divisores diferentes, y 1 solo tiene como divisor a si mismo
        [(comprobarPrimo n raizN)]  ; Si n != 1 entonces llamo a comprobarPrimo
    )
)


