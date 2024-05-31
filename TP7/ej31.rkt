#lang racket

#|
Escribir una función que acepte tres números y devuelva la diferencia entre el mayor y el menor.
|#

(define (encontrarMayor X Y Z)
    (cond
        [(and (>= X Y) (>= X Z)) X] 
        [(and (>= Y X) (>= Y Z)) Y]
        [(and (>= Z X) (>= Z Y)) Z]  
    )
)

(define (encontrarMenor X Y Z)
   (cond
        [(and (<= X Y) (<= X Z)) X] 
        [(and (<= Y X) (<= Y Z)) Y]
        [(and (<= Z X) (<= Z Y)) Z]  
    )
)

(define (diferenciaMayorYMenor X Y Z)
    (define mayor (encontrarMayor X Y Z))
    (define menor (encontrarMenor X Y Z))
    (abs (- mayor menor))
)