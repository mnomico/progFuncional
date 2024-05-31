#lang racket

#|
    Escribir una función recursiva que calcule la potencia con exponente algebraicamente:
    	       	| 1        		    si n=0
  	m^n =     	|  
    	       	| m * m^(n-1)   	si n > 0
|#

(define (potencia base exponente)
    (cond
        [(= exponente 0) 1]
        [else (* base (potencia base (- exponente 1)))]
    )
)