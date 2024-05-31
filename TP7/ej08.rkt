#lang racket

#|Sabiendo que: 1 pie = 12 pulgadas; 1 yarda = 3 pies; 1 pulgada = 2.54 centímetros. Definir tres funciones (yardas, pulgadas y pies) que, dado un valor en centímetros, retornen esa longitud expresada en esas unidades.
        > (pulgadas 1524)  => 600
        > (pies 1524)  => 50
        > (yardas 1524)  => 16.666666666666668
|#

(define (pulgadas cm)
  (/ cm 2.54)
)

(define (pies cm)
  (/ (pulgadas cm) 12)
)

(define (yardas cm)
  (/ (pies cm) 3)
)