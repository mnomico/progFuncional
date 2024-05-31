#lang racket

(provide getdiap)
(provide julianoAFecha)

#|
Definir una función que acepte un día juliano y devuelva una lista (día mes año) con la fecha correspondiente.
Las siguientes son fórmulas que pueden aplicarse:
Primero calculamos las variables auxiliares diap, app y mpp:
    DIAP = DJ - 1720982
    APP = ENT ((DIAP - 122.1) / 365.25)
    MPP = ENT ((DIAP - ENT(365.25 * APP)) / 30.6001)
Para calcular el día
    DIA = DIAP - ENT(365.25 * APP) - ENT(30.6001 * MPP)
Para calcular el mes
    Si MPP = 14 ó 15:
     	MES = MPP - 13
    Si MPP < 14:
     	MES = MPP - 1
Para calcular el año
    Si MES > 2:
     	AÑO = APP
    Si MES = 1 ó 2:
     	AÑO = APP + 1
|#

(define (getdiap dj)
    (- dj 1720982)
)

(define (getapp diap)
    (truncate (/ (- diap 122.1) 365.25))
)

(define (getmpp diap app)
    (truncate(/ (- diap (truncate (* 365.25 app))) 30.6001))
)

(define (getdia diap mpp app)
    (define segundoTermino (truncate (* 365.25 app)))
    (define tercerTermino (truncate (* 30.6001 mpp)))
    (- diap segundoTermino tercerTermino)
)

(define (getmes mpp)
    (cond
        [(>= mpp 14) (- mpp 13)]
        [else (- mpp 1)]
    )
)

(define (getaño mes app)
    (cond
        [(<= mes 2) (+ app 1)]
        [else app]
    )
)

(define (julianoAFecha dj)
    (define diap (getdiap dj))
    (define app (getapp diap))
    (define mpp (getmpp diap app))
    (define dia (getdia diap mpp app))
    (define mes (getmes mpp))
    (define año (getaño mes app))
    (list
        dia
        mes
        año
    )
)