#lang racket

#|
Escribir una función que reciba dos números naturales y devuelva su máximo común divisor, sabiendo que, si los números son iguales, 
el MCD es el mismo número, en otro caso el MCD es igual al MCD entre el menor de ellos y la diferencia entre ambos.
|#

(define (menor M N)
    (cond
        [(< M N) M]
        [else N]
    )
)

(define (diferencia M N)
    (abs (- M N))
)

; Función principal
(define (MCD M N)
    (cond
        [(= M N) M]                                 ; Si los numeros son iguales, el MCD es el mismo número
        [else (MCD (menor M N) (diferencia M N))]   ; Sino, hago la llamada recursiva pasando como parámetro el menor y la diferencia entre ellos
    )
)