#lang racket

#|
    Definir una función que acepte los coeficientes de un sistema de dos ecuaciones con dos incógnitas:
    a11 * x1 + a12 * x2 = b1
    a21 * x1 + a22 * x2 = b2

    y devuelva una lista con los valores de las incógnitas.
 		> (resuelveSistema 1 2 3 4 5 6)  =>  (-1 2)
|#

; Función que calcula el determinante (ae - bd)
(define (calcularDeterminante a b d e)
    (define ae (* a e))
    (define bd (* b d))
    (- ae bd)
)

; Función que obtiene X cuando el sistema de ecuaciones tiene una sola solución
(define (resolverSolucionX b c e f determinante)
    (define ec (* e c))
    (define bf (* b f))
    (define ec-bf (- ec bf))
    (/ ec-bf determinante)
)

; Función que obtiene Y cuando el sistema de ecuaciones tiene una sola solución
(define (resolverSolucionY a c d f determinante)
    (define af (* a f))
    (define dc (* d c))
    (define af-dc (- af dc))
    (/ af-dc determinante)
)

; Función que determina si el sistema de ecuaciones tiene infinitas soluciones o ninguna
(define (determinarCantidadSoluciones a c d f)
    (define m (/ d a))
    (define m*c (* m c))
    (if (= m*c f) '(El sistema tiene infinitas soluciones.)
        '(El sistema no tiene solución.)
    )
)

; Función principal
(define (resuelveSistema a b c d e f)
    (define determinante (calcularDeterminante a b d e))
    (cond
        ; Si determinante != 0 entonces tiene una solución única
        [(not (= determinante 0))(
            list
                (resolverSolucionX b c e f determinante)
                (resolverSolucionY a c d f determinante)
        )]
        ; Sino determino si tiene infinitas o ninguna
        [else (determinarCantidadSoluciones a c d f)]
    )
)