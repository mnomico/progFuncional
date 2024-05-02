#lang racket

#|
Escribir un algoritmo que permita convertir una magnitud expresada en una unidad de medida de longitud en la correspondiente en otra unidad de medida. 
Por ejemplo en prolog el predicado sería: 
convertir(ValorOrigen, UnidadOrigen, Resultado, UnidadDestino).
?- convertir(30,cm, X, m).
   X = 0,3.
Las unidades a contemplar son: mm, cm, dm, m
|#

; Función que busca la posición de una unidad dentro de una lista que contiene las 4 unidades
(define (buscarPosicion unidadABuscar unidades)
    (cond
        [(equal? unidadABuscar (car unidades)) 1]
        [else (+ (buscarPosicion unidadABuscar (cdr unidades)) 1)]
    )
)

; Función que calcula la potencia de un número
(define (potencia base exponente)
    (cond
        [(= exponente 0) 1]
        [else (* base (potencia base (- exponente 1)))]
    )
)

; Función que divide un valor por 10 dada una cantidad de veces
(define (dividirPor10 valor cantidadVeces)
    (define modificador (potencia 10 cantidadVeces))
    (/ valor modificador)
)

; Función que multiplica un valor por 10 dada una cantidad de veces
(define (multiplicarPor10 valor cantidadVeces)
    (define modificador (potencia 10 cantidadVeces))
    (* valor modificador)
)

; Función principal
(define (convertir valor unidadValor unidadAConvertir)
    (define unidades '(mm cm dm m))                                                     ; Defino la lista que contiene las cuatro unidades
    (define posicionUnidad (buscarPosicion unidadValor unidades))                       ; Busco la posición de la unidad del valor en la lista unidades 
    (define posicionUnidadAConvertir (buscarPosicion unidadAConvertir unidades))        ; Busco la posición de la unidad a convertir en la lista unidades
    (define diferenciaPosicion (- posicionUnidad posicionUnidadAConvertir))             ; Calculo la diferencia entre las dos posiciones
    
    (cond       
        ; Si la diferencia es negativa, entonces hay que dividir el valor por 10.
        [(< diferenciaPosicion 0) (dividirPor10 valor (abs diferenciaPosicion))]       

        ; Si la diferencia es negativa, entonces hay que multiplicar el valor por 10 
        [(> diferenciaPosicion 0) (multiplicarPor10 valor (abs diferenciaPosicion))]

        ; Si la difererencia es 0, entonces no hay que hacer la conversión porque la unidad pedida es la misma que la unidad del valor
        [else valor]
    )
    ; Paso como parámetro el valor absoluto de la diferencia para poder calcular cuantas veces hay que multiplicar/dividir por 10
    ; No lo hago antes porque si lo hiciera, no sabría si tengo que multiplicar o dividir
)