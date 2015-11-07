#lang racket

(require(lib "graphics.ss" "graphics")) 
(open-graphics)
;-----------------------------------------------------------
;ventanas
(define ventana (open-viewport "ventana" 800 500))
;-----
((draw-viewport ventana) "black")
;:::::::::::::::::::::
(define ventana2 (open-pixmap "ejemplo" 800 500))
;dibujamos la imagen fondo.jpg
((draw-pixmap ventana2) "fondo.jpg" (make-posn 0.0 0.0) "black")
;copiamos el contenido de una ventana a otra
(copy-viewport ventana2 ventana)
;::::::::::::::::::::::::::::::::::::::::::::::::::::::
;posicion en x
(define posy# (vector 350))
;::::::::::::::::::::::::::::::::::::::::::::::::::::::
;movimiento
(define (nave lad)
 (begin
  (copy-viewport ventana2 ventana)   
  (cond     
    [(equal? lad 'l)                    
      ((draw-pixmap ventana) "defender.png" (make-posn (vector-ref posy# 0) 440) "black")]
   
    [(equal? lad 'r)
      ((draw-pixmap ventana) "defender.png" (make-posn (vector-ref posy# 0) 440) "black")]

    [else (void)]    
   )
 )
)
;:::::::::::::::::::::::::::::::::::::::::::::::::
(define (move# a)
(cond
;left
  [(and a (>= (vector-ref posy# 0) 10))
    (begin (vector-set! posy# 0 (- (vector-ref posy# 0) 13)) (nave 'l))]
;right
  [(and (not a) (<= (vector-ref posy# 0) 740))
   (begin (vector-set! posy# 0 (+ (vector-ref posy# 0) 13)) (nave 'l))]
  )
)
;::::::::::::::::::::::::::::::::::::::::::::::::::
(define (teclado press)
 (cond
    [(equal? press 'left)
     (begin
       (move# #t)
       (teclado (key-value (get-key-press ventana))))]

    [(equal? press 'right)
     (begin
       (move# #f)
       (teclado (key-value (get-key-press ventana))))]   
;else
    [else (teclado (key-value (get-key-press ventana)))]  
  )
) 
;:::::::::::::::::::::::::::::::::::::::::::::::::::::
;Prueba
(teclado 10)