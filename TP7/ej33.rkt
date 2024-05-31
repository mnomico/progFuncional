#lang racket

#|
En una fábrica, la eficiencia de una máquina se calcula en función de las piezas producidas, por una parte, y de las piezas defectuosas por la otra. 
Las condiciones son las siguientes:
    a. Producción mínima: 1000 piezas
    b. Máximo de piezas defectuosas: 20

El puntaje asignado a la máquina se calcula como sigue:
    Puntaje 1: si no cumple con ninguna de las condiciones
    Puntaje 2: si cumple solo con la segunda
    Puntaje 3: si cumple solo con la primera
    Puntaje 4: si cumple con las dos

Definir una función que acepta la cantidad de piezas producidas y la cantidad de defectuosas y devuelve el puntaje asignado.
|#

(define (calcularEficiencia producidas defectuosas)
    (define produccionMinima 1000)
    (define defectuosasMaximas 20)
    (cond
        [(and (> producidas produccionMinima) (< defectuosas defectuosasMaximas)) "Puntaje 4: cumple con ambos requisitos."]
        [(> producidas produccionMinima) "Puntaje 3: solo cumple el primer requisito."]
        [(< defectuosas defectuosasMaximas) "Puntaje 2: solo cumple con el segundo requisito."]
        [else "Puntaje 1: no cumple con ningun requisito."]
    )
)