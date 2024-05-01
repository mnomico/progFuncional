#lang racket

#|
Desarrollar una función que acepte las longitudes de tres segmentos, y que devuelva #T sí forman un triángulo. 
Recordar que la suma de las longitudes de dos lados cualesquiera de un triángulo siempre debe ser mayor que la longitud del restante.
|#

(define (suma segmentoA segmentoB)
    (+ segmentoA segmentoB)
)

(define (formaTriangulo? S1 S2 S3)
    (define sumaS1yS2 (suma S1 S2))
    (define sumaS2yS3 (suma S2 S3))
    (define sumaS3yS1 (suma S3 S1))
    (and
        (>= sumaS1yS2 S3)
        (>= sumaS2yS3 S1)
        (>= sumaS3yS1 S2)
    )
)