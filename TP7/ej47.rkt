#lang racket

#|
    Escribir una función recursiva que calcule el Factorial de un número:
	           	| 1       		si N = 0
   	N! =    	|
 	          	| N*(N-1)!	de otro modo
|#

(define (factorial N)
    (cond
        [(= N 0) 1]     ; Caso base
        [(* N (factorial (- N 1)))] 
    )
)