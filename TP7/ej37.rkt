#lang racket

#|
Función que acepta un número que representa un año, y devuelve #T si ese año es bisiesto. Un año es bisiesto si es divisible por 4, 
pero no es divisible por 100, salvo que sea divisible por 400
|#

(define (divisiblePorN año N)
    (= (modulo año N) 0)
)

(define (bisiesto? año)
    (define divisiblePor4 (divisiblePorN año 4))
    (define divisiblePor100 (divisiblePorN año 100))
    (define divisiblePor400 (divisiblePorN año 400))
    (or
        (and divisiblePor4 (not divisiblePor100))   ; Divisible por 4 pero no por 100
        divisiblePor400                             ; Divisible por 400,y por lo tanto divisible por 4 y 100
    )
)