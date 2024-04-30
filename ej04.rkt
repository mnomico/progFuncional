#lang racket

#| Función que, dado cualquier número, retorne la diferencia entre ese número y 20.
 		> (diferencia20 4)  =>  16
|#

(define (diferencia20 x) (abs (- x 20)))