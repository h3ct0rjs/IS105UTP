;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ParcialFinal2IHFJS) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;;====================================
;Taller 5.0
;Recursividad en Dr Racket
;feedback:hfjimenez@utp.edu.co 
;UTP.20152 ISC
;====================================
(display "
============================================
\t.:::Parcial Practico:2:::.
      Recursividad
 feedback:hfjimenez@utp.edu.co 
\t   UTP.20152 ISC
=============================================== " )
;Llámeles misin, micos, mitan (3 Unidades)
;Utilizando las funciones entregadas del primer ejemplo vemos que el problema de calcular el sen y cos se puede dividir en dos partes,
;la primer parte es una funcion que realice  la division entre -1^n (2n+1)!

;Funcion que realiza (2n+1)!
(define (factorial2n1 num cont acum)
  (if (<= cont num)  
      (factorial2n1 num (+ cont 1)(* acum (+ (* 2 cont ) 1)))
      (display acum)
      )
 )
 
;Prueba Escritorio dee dar 15.
;(factorial2n1 2 1 1)


;Realiza el factorial de 2n
(define (factorial2n num cont acum)
  (if (<= cont num)  
      (factorial2n num (+ cont 1)(* acum  (* 2 cont) ))
      (display acum)
      )
      )
;Prueba Escritorio dee dar 8.
;(factorial2n1 2 1 1)

;;Realiza el factorial de -1^n 
(define (elevar n contador acuelevar)
  (if (<= contador n)
      (elevar n (+ contador 1)(+ acuelevar (expt -1  contador)) )
      acuelevar
      )
  )

;realiza  x^2n+1

(define (elevarsin x n contador acumulador)
  (if (<= contador n)
      (elevarsin x n (+ contador 1) (+ acumulador (expt x (+ (* 2 contador) 1) )))
      acumulador
  
  )
  )

;Prueba de Escritorio
;(elevarsin 2 3 1 0)

;realiza  x^2n
(define (elevarsin x n contador acumulador)
  (if (<= contador n)
      (elevarsin x n (+ contador 1) (+ acumulador (expt x  (* 2 contador)  )))
      acumulador
  
  )
  )
(define (misin x)
  (begin 
    (display "\nCALCULO DEL SENO\n")
    (display "\nINGRESE EL VALOR DE x:\n")
    (define valorx (read))
    ;LLamar Funciones   
    )
  )

(define (micos x)
  (begin 
    (display "\nCALCULO DEL COSENO\n")
    (display "\nINGRESE EL VALOR DE x:\n")
    (define valorxcos (read))
    ;LLamar Funciones       
    
    )
  
  )
    (display "\nLA TANGENTE NO SE REALIZO  POR TIEMPO PERO CONOCIENDO EL CALCULO DEL SENO Y EL COSENO\n")
    (display "\nSE DEDUCE\n")
(display "NO SE JUNTO NADA")



; En realidad la solucion mas optima para esto era :
;;;Asumimos que x=1
;(define term-exp
;    (lambda (n val)
;      (/ (expt val n) (factorial n))))
;
;;cosx
;;Se entiende que la Serie es1 - x^2/2 + x^4/4! -x^6/6!...
;(define term-cos
;  (lambda (n val)
;    (cond 
;      [(= (modulo n 2) 0) (/ (expt val (* 2 n)) (factorial (* 2 n)))]  ; Factorial Sale de (require math/bigfloat) para elevar, (require math/number-theory) y para factorial!
;      [else (* -1 (/ (expt val (* 2 n)) (factorial (* 2 n)) ))])))
;Se dijo muy tarde esto ! , en este Ejemplo se ve recursividad.

