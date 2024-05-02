#lang racket

#|
Escribir una función llamada triple que, dado cualquier valor x, retorne el triple de x.
> (triple 4)  =>  12
|#

(define (triple x) 
    (* x 3)
)