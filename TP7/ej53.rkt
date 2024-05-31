#lang racket

#|
Un número es divisible por 7 cuando separando la primera cifra de la derecha, multiplicándola por 2, 
restando este producto de lo que queda a la izquierda y así sucesivamente, da cero o múltiplo de 7.
Por ejemplo, los siguientes números son divisibles entre 7, porque:
    32291 			    última cifra 1 -> 1x2=2 	
    3229-2 = 3227 	    última cifra 7 -> 7x2=14 	
    322-14 = 308 		última cifra 8 -> 8x2=16 
    30-16 = 14 		    resultado parcial 14. 
Como 14 pertenece a la tabla del 7 (7x1 … 7x10) el número original es divisible por 7.
Generar un algoritmo que decida si un número dado es múltiplo de 7 o no, utilizando este método
|#

(define (multiploDe7? numero)
    (define cifraDerecha (remainder numero 10))                     ; Obtengo la primera cifra de la derecha del número    
    (define restoNumero (quotient numero 10))                       ; Obtengo el resto del número sin la primera cifra de la derecha
    (define nuevoNumero (abs (- restoNumero (* cifraDerecha 2))))   ; Hago restoNumero - (cifraDerecha * 2) y obtengo su valor absoluto (para evitar contemplar negativos)
    (cond
        [(or (= nuevoNumero 0) (= nuevoNumero 7))]                  ; Si el número es 0 o 7, entonces el número es múltiplo de 7
        [(and (> nuevoNumero 0) (< nuevoNumero 7)) #f]              ; Si el número está entre 0 y 7, entonces no es múltiplo de 7
        [else (multiploDe7? nuevoNumero)]                           ; Sino, hago la llamada recursiva pasando como parámetro el nuevo número
    )
)