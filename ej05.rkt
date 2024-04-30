#lang racket

#| Escribir una función que, dado cualquier valor x, retorne el duplo de la suma de 15 + x.
> (duplo 4)  =>  38 
|#

(define (duplo x) (* (+ 15 x) 2))