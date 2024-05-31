#lang racket

#|
    Definir una función que acepte la cantidad de varones y mujeres que hay en un recinto, y devuelva una lista con el porcentaje de varones y mujeres.
        > (porcentajeDeVyM v m)  => ‘ (60 40)
|#

; Función que calcula el porcentaje de x sobre la suma de x e y
(define (porcentaje x y)
    (*
        (/
            x
            (+ x y)
        )
        100
    )
)

; Función principal
(define (porcentajeDeVyM varones mujeres)
    (define porcentajeVarones (porcentaje varones mujeres))
    (define porcentajeMujeres (- 100 porcentajeVarones))
    (list
        porcentajeVarones
        porcentajeMujeres
    )
)