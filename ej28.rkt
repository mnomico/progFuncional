#lang racket

#|
En un grupo de tres personas hay dos mellizos, el restante es mucho más viejo. Preparar una función que acepte las tres edades y devuelva la edad de los mellizos.
  > (mellizosYViejo 2 2 5)  =>  2
|#

(define (mellizosYViejo X Y Z)
    (cond
        [(= X Y) X]           
        [(= X Z) X]           
        [(= Y Z) Y]           
    )
)
