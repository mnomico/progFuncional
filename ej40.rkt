#lang racket

#|
Dos vendedores cobran 3 % de comisión sobre sus ventas. Además, el que más vendió recibe una comisión extra del 1 %. 
Construir una función que acepte los montos vendidos y que devuelva las comisiones a cobrar por cada uno.
|#

; Función para determinar quien vendió más. Si los dos vendieron lo mismo, retorno -1
(define (mayor tV1 tV2)
    (cond
        [(> tV1 tV2) tV1]
        [(> tV2 tV1) tV2]
        [(= tV1 tV2) -1]
    )
)

; Función para calcular la comisión del vendedor con menor cantidad de ventas
(define (calcularComision totalVendido)
    (define comision 0.03)
    (* totalVendido comision)
)

; Función para calcular la comisión del vendedor con mayor cantidad de ventas
(define (calcularComisionExtra totalVendido)
    (define comisionExtra 0.01)
    (define comision 0.03)
    (* totalVendido (+ comision comisionExtra))
)

(define (calcularComisiones tV1 tV2)
    (define mayorVentas (mayor tV1 tV2))
    (cond

        ; Si el que más vende es el primer vendedor
        [(= mayorVentas tV1) 
        (list
            (calcularComisionExtra tV1)
            (calcularComision tV2)
        )]

        ; Si el que más vende es el segundo vendedor
        [(= mayorVentas tV2) 
        (list
            (calcularComision tV1)
            (calcularComisionExtra tV2)
        )]
        
        ; Si ambos vendieron lo mismo
        [(= mayorVentas -1) 
        (list
            (calcularComision tV1)
            (calcularComision tV2)
        )]
    )
)