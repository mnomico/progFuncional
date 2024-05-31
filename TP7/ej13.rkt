#lang racket

#|
    El área de un triángulo cuyos lados son a, b y c se puede calcular por la fórmula:
    A = sqrt(p * (p - a) * (p - b) * (p - c))
    donde p = (a + b + c) / 2. Definir una función que dados a, b y c, retorne el área del triángulo.
 	> (heron 3 4 5)  =>  6
|#

(define (heron a b c)
    (define p (/ (+ a b c) 2))
    (sqrt
        (*
            p       ; p
            (- p a) ; p - a
            (- p b) ; p - b
            (- p c) ; p - c
        )
    )
)