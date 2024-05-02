#lang racket

#|
Escribir una función que acepte un número natural "n", y devuelva el enésimo término de la sucesión de Leonardo de Pisa (Fibonacci), 
sabiendo que los dos primeros términos de la misma son 0 y 1, y cada uno de los demás es igual a la suma de los dos anteriores.
|#

(define (fibonacci n)
    (cond
        [(or (not (number? n)) (< n 0)) "Error. El dato ingresado no es válido"]    ; Verifico si el dato ingresado es un número mayor o igual a 0
        [(or (= n 0) (= n 1)) 1]            ; Si n <= 1 entonces retorno 1
        [else (+ (fibonacci (- n 1)) n)]    ; Sino, hago la llamada recursiva pasando como parámetro n - 1 y al resultado le sumo n 
    )
)