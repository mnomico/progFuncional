#lang racket

#|
Funciones calendario: la cantidad de días transcurridos entre dos fechas puede calcularse transformándolas en días Julianos. 
Esta es una convención astronómica que representa cada fecha como el número de días transcurridos desde el 1 de enero de 4713 AC. 
Para transformar una fecha expresada como DIA, MES y AÑO en días Julianos se usa la siguiente fórmula:
    DJ = ENT (365.25 * AP) + ENT (30.6001 * MP) + DIA + 1720982
donde DJ es el día Juliano, y AP y MP son dos constantes que se obtienen como sigue:
 	Si MES = 1 ó 2:
      	AP = AÑO - 1
      	MP = MES + 13
 	Si MES > 2:
      	AP = AÑO
      	MP = MES + 1
La cantidad de días entre dos fechas es igual a la diferencia entre los respectivos días Julianos:
días = (día Juliano 2) - (día Juliano 1)
Preparar una función que acepte una fecha como DIA, MES, y AÑO y devuelva el día juliano correspondiente.
|#

(define (definirAP mes año)
    (cond
        [(<= mes 2) (- año 1)]
        [else año]
    )
)

(define (definirMP mes)
    (cond
        [(<= mes 2) (+ mes 13)]
        [else (+ mes 1)]
    )
)

(define (diaJuliano dia mes año)
    (define AP (definirAP mes año))
    (define MP (definirMP mes))
    (define primerTermino (truncate (* 365.25 AP)))
    (define segundoTermino (truncate (* 30.60001 MP)))
    (+ primerTermino segundoTermino dia 1720982)
)