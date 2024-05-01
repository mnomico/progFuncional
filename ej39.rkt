#lang racket

#|
Un vendedor cobra una comisión del 3 % sobre sus ventas, pero si vendió más de $1000.- recibe un 1 % más, 
además de un premio fijo de $200.-; preparar una función que acepte el total vendido, y devuelva la comisión a cobrar.
|#

(define (calcularComision totalVendido)
    (define comision 0.03)
    (define comisionExtra 0.01)
    (define premio 200)
    (cond
        [(> totalVendido 1000) (+ (* totalVendido (+ comision comisionExtra)) 200)]
        [else (* totalVendido comision)]
    )
)