#lang racket

#|
    En una carrera de turismo carretera el tiempo se mide en minutos, segundos y centésimas de segundo y, el espacio recorrido se mide en metros. 
    Definir una función para ingresarle la distancia recorrida y el tiempo tardado, y devuelva la velocidad promedio de un automóvil en km/hr.
    Sabiendo que 1 metro/segundo = 3.6 Km/h, se puede hacer el cálculo en m/s y convertir. Para mayor claridad pasamos el tiempo a segundos:
 	> (velocidad 1000 1 0 0)  => 60
|#

(define (minutosASegundos minutos)
    (* minutos 60)
)

(define (centesimasASegundos centesimas)
    (/ centesimas 100)
)

(define (segundosTotal minutos segundos centesimas)
    (+
        (minutosASegundos minutos)
        segundos
        (centesimasASegundos centesimas)
    )
)

(define (velocidad metros minutos segundos centesimas)
    ; hago la conversión de m/s a km/h => 1 m/s = 3.6 km/h
    (*
        (/
            metros
            (segundosTotal minutos segundos centesimas) ; paso los minutos y las centésimas a segundos y los sumo junto con los segundos originales
        )
        3.6
    )
)