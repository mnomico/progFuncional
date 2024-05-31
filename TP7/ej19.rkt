#lang racket

#|
    Utilizando las expresiones descritas anteriormente, definir la función pasaje, que reciba una medida en centímetros, y retorne una lista con esa medida expresada en pulgadas, pies y yardas.
 		> (pasaje 1524)  => (600.0 50.0 16.666666666666668)
|#

(define (pulgadas cm)
  (/ cm 2.54))

(define (pies cm)
  (/ (pulgadas cm) 12))

(define (yardas cm)
  (/ (pies cm) 3))

(define (pasaje cm)
    (list
        (pulgadas cm)
        (pies cm)
        (yardas cm)
    )
)