#lang racket

#|
Se dice que n es un ńumero que explota, cuando éste explota en varios fragmentos más chicos que él, dada una bomba. 
Si se tiene que n es el número y b la bomba, tales que n es mayor que b, se puede hacer que n explote en dos números n1 = n / b (división entera) y n2 = n - (n / b). 
Pero b es una bomba que produce una reacción en cadena, si n1 o n2 son mayores que b, éstos también explotan con la regla anterior, 
hasta que se encuentre que el número no es mayor que b, entonces se dice que ya no se puede explotar el número.
Escribe una función que retorne una lista con los pedazos del número n, dado que se tiene la bomba b.
    > (explota 10 3)  =>  ‘(3 2 1 1 3)
    > (explota 20 5)  =>  ‘(4 3 2 2 1 1 1 1 5)
|#

(define (explota numero bomba)
    (define n1 (quotient numero bomba))
    (define n2 (- numero n1))
    (cond
        [(> numero bomba) (cons (explota n1 bomba) (explota n2 bomba))]
        [(<= numero bomba) numero]
    )
)


