#lang racket

#|
    La fuerza de atracción entre dos masas, m1 y m2, separadas por una distancia d, está dada por la fórmula: F = G * m1 * m2 / d² donde G es la constante de gravitación universal, 
    y es igual a G = 6.673 * 10-8 cm³/g*seg². Definir una función que dados los valores m1, m2 y d, retorne la fuerza de atracción entre las masas.
    > (fuerza 1000 2000 1/5)  =>  3.3365000000000005
|#

(define (fuerza m1 m2 d) 
    (define 10^-8 (expt 10 -8))     ; Defino 10^-8 para que sea más fácil usar
    (define G (* 6.673 10^-8))      ; Defino G
    (define d² (* d d))             ; Defino d²
    (/ (* G m1 m2) d²)              ; Aplico la fórmula
)