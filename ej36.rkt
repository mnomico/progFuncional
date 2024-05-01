#lang racket

#|
A un tanque le llega agua a través de una canilla, mientras que simultáneamente desagua a través de un sumidero. 
La capacidad del tanque es de T litros, por la canilla llegan C litros por minuto, y por el sumidero desaguan S litros por minuto. 
Inicialmente el tanque tiene L litros. 
Desarrollar una función que acepte los valores de T, C, S y L, y que calcule cuántos minutos tarda en llenarse o vaciarse el tanque.
|#


; En resumen, hay que hacer una función que verifique que por cada minuto que pase si el tanque se llenó o se vació

; Función que utilizo para retornar el resultado
(define (concatenarString cadena1 numero cadena2)
    (string-append cadena1 (number->string numero) cadena2)
)

; Función recursiva que verifica si el tanque se llenó o vació, retornando la cantidad de minutos que transcurrieron en el proceso
(define (verificarEstado capacidadTanque diferenciaLitros litrosActuales minutosTranscurridos)

    (define litrosSiguientes (+ litrosActuales diferenciaLitros))   ; Defino los litros que va a tener el tanque en la llamada recursiva siguiente
    (define minutoSiguiente (+ minutosTranscurridos 1))             ; Defino el minuto siguiente para la llamada recursiva siguiente

    (cond
        ; Si los litros que tiene el tanque son iguales o mayores a su capacidad, entonces se llenó
        [(>= litrosActuales capacidadTanque) (concatenarString "El tanque se llenó en " minutosTranscurridos " minutos")]

        ; Si los litros que tiene el tanque son menores o iguales a 0 entonces el tanque está vacío
        [(<= litrosActuales 0) (concatenarString "El tanque se vació en " minutosTranscurridos " minutos")]

        ; Si no ocurre ninguna de las dos cosas, hago la llamada recursiva pasando como parámetros los datos definidos anteriormente
        [else (verificarEstado capacidadTanque diferenciaLitros litrosSiguientes minutoSiguiente)]
    )
)

; Función principal.
(define (calcularTiempo capacidadTanque litrosEntrantes litrosSalientes litrosIniciales)

    ; Calculo la diferencia que hay entre los litros entrantes y los salientes. Si el resultado es positivo, hay más litros que entran de los que salen,
    ; entonces el tanque se va a llenar. Si el resultado es negativo, salen más litros de los que entran, entoncesel tanque se va a vaciar.
    (define diferenciaLitros (- litrosEntrantes litrosSalientes))       

    ; Hago la llamada recursiva pasando la capacidad del tanque, la diferencia de litros, los litros iniciales y los minutos transcurridos, que serían inicialmente 0.    
    (verificarEstado capacidadTanque diferenciaLitros litrosIniciales 0) 
)