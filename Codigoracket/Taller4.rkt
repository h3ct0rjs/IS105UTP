;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Taller4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
;;====================================
;Taller 4.0
;Programas con funciones simples en Dr Racket
;feedback:hfjimenez@utp.edu.co 
;UTP.20152 ISC
;====================================
(display "
\n============================================
\t.:::Taller 4.0:::.
 Manejo de COndicionales
 feedback:hfjimenez@utp.edu.co 
\t\tUTP.20152 ISC
Repositorio:https://github.com/heticor915/IS105UTP
=============================================== 
Descripción:\n")
;1. Desarrollar una funcion  para determinar si un n
;dado es solucion de la ecuacion evaluada en la expresion
(define (ejercicio1 n)
  (if (= (+ (* 4 (expt n 2)) (* 6 n) 2) 462 )
      (display "Si Es correcta la Solucion")
      (display "No es la Solucion")
      )   
  )
;Casos de Prueba 10,12,14
(display "\nEJERCICIO DE EXPRESION\n")
(display "Prueba de 10: \t")
(ejercicio1 10)
(display "\nPrueba de 12: \t")
(ejercicio1 12)
(display "\nPrueba de 14: \t")
(ejercicio1 14)
 
;========== CUADRATICA ========
(define (cuadratica a b c)
  (cond
    [(> (expt b 2) (* 4 a c)) 
     (begin
       (display "\n\n::Ecuacion Cuadratica::")
       (display "\n.::Dos Soluciones::.\n")
       (display "x1: ")
       (display (/ (+ (- b) ( sqrt (- (expt b 2) (* 4 a c)) )) (* 2 a)))
       (display "\nx2: ")
       (display (/ (+ (- b) ( sqrt (- (expt b 2) (* 4 a c)) )) (* 2 a)))
       )
     ] 
   [(= (expt b 2) (* 4 a c)) 
    (begin
      (display "\n\nEcuacion Cuadratica\n\n")
      (display "\n.::Una Solucion::.\n")
      (display "x1: ") 
      (display (/ (+ (- b) ( sqrt (- (expt b 2) (* 4 a c)) )) (* 2 a)))
      )]
   [(< (expt b 2) (* 4 a c))
    (begin
      (display "\n\nEcuacion Cuadratica\n")
      (display "\n.::No Existe Solucion Factible::.\n\n")
      )]
   );Fin Cond
  );Fin Define
;Caso de Prueba
(cuadratica 1 4 1)

;--------------------
;Valor Absoluto de Un numero.
(define  (valorabs n)
  (begin
    (display "\n\nVALOR ABSOLUTO NUMERO!")
    (display "\nEl valor Absoluto es :")
    (abs n)
    )
  )
;Caso de Prueba
(valorabs -9)

;--------------------
(define (compradllantas n)
  (cond 
    [(< n 5)
     (begin  
       (display "\n\n::COMPRAVENTAS PIRELLI:LLANTAS::\n")
       (display "Costo a $30000\n")
       (display "Total:$")
       (display(* n 30000))
       )
     ]
    [(>= n 5)
     (begin
       (display "\n\n::COMPRAVENTAS PIRELLI:LLANTAS::\n")
       (display "Costo a $20000\n")
       (display "Total:$")
       (display (* n 20000))
       )
     ]
    
    )
  ) 
 ; Caso de Prueba
(compradllantas 7)

;--------------------

(define (supermercado totalcompra)
  (if (>= (random 100) 74)
      (begin
        (display "\n\n--SUPERMERCADO JIMENEZ--\nFactura de Compra:")
        (display  totalcompra)
        (display "\nDescuento Aplicado del 20%\n")
        (display "Total a Pagar: ")
        (display (- totalcompra (* totalcompra 0.2)))
        )
      (begin
        (display "\n\n--SUPERMERCADO JIMENEZ--\nFactura de Compra:")
        (display totalcompra)
        (display "\nDescuento Aplicado del 15%\n")
        (display "Total a Pagar: ")
        (display (- totalcompra (* totalcompra 0.15)))
        )
      )
  )
;Caso de Prueba
(supermercado 15000)

;--------------------

(define (hemog edad nivelh)
  (cond
    [(and (> edad 1 ) (<= edad 5) (>= nivelh 11.5) (<= nivelh 15))
     (begin
       (display "\n\n:::RESULTADO Analisis: HEMOGLOBINA:::\n")
       (display "Datos Paciente:\n[*]Edad:")
       (display edad)
       (display " [*]Nivel Hemoglobina:")
       (display nivelh)
       (display "\nNo Presenta Problemas Medicos\n")
       (display "[+]R:0% DE PRESENCIA PATOLOGICA D ANEMIA\n")
       (display "LABORATORIO JIMENEZ S.A ")
       )
     ]
    
    [(and (> edad 5 ) (<= edad 10) (>= nivelh 12.6) (<= nivelh 15.5))
     (begin
       (display "\n\n:::RESULTADO Analisis: HEMOGLOBINA:::\n")
       (display "Datos Paciente:\n[*]Edad:")
       (display edad)
       (display "  [*]Nivel Hemoglobina:")
       (display nivelh)
       (display "\nNo Presenta Problemas Medicos\n")
       (display "[+]R:0% DE PRESENCIA PATOLOGICA D ANEMIA\n")
       (display "LABORATORIO JIMENEZ S.A ")
       )
     ]
    [(and (> edad 10 ) (<= edad 15) (>= nivelh 13) (<= nivelh 15.5))
     (begin
       (display "\n\n:::RESULTADO Analisis: HEMOGLOBINA:::\n")
       (display "Datos Paciente:\nEdad:")
       (display edad)
       (display "[*] Nivel Hemoglobina:")
       (display nivelh)
       (display "\nNo Presenta Problemas Medicos\n")
       (display "[+]R:0% DE PRESENCIA PATOLOGICA, ANEMIA\n")
       (display "LABORATORIO JIMENEZ S.A ")
       )
     ])

    ;
  )  
  
;Caso de prueba
(display "\n\n\tLectura de Datos:ANALISIS HEMOGLOBINA: \n")
(display "Ingrese la Edad: ")
(define edad(read))
(display "Ingrese la NivelHemoglobina: ")
(define nivelh(read))

(hemog edad nivelh) 
;Ejercicio 9.


(define (fabricaJimenezTux ncompu)
  (cond
    [(< ncompu 5)
     (begin
       (display "\n\n##################################\n")
       (display "Fabrica de Computadoras Jimenez Tux S.A.S\n")
       (display "##################################\n")
       (display "Costo Unit. Computadora:$1.100.000\nDescuento Aplicado:10%\nTotal:$")
       (display (- (* 1100000 ncompu) (* 1100000 ncompu 0.1)))
       )
     ]
    [(and (>= ncompu 5) (<= ncompu 10))
     (begin
       (display "\n\n##################################\n")
       (display "Fabrica de Computadoras Jimenez Tux S.A.S\n")
       (display "##################################\n")
       (display "Costo Unit. Computadora:$1.100.000\nDescuento Aplicado:20%\nTotal:$")
       (display (- (* 1100000 ncompu) (* 1100000 ncompu 0.2)))
       )
     ]
    [(> ncompu 10)
     (begin
       (display "\n\n##################################\n")
       (display "Fabrica de Computadoras Jimenez Tux S.A.S\n")
       (display "##################################\n")
       (display "Costo Unit. Computadora:$1.100.000\nDescuento Aplicado:40%\nTotal:$")
       (display (- (* 1100000 ncompu) (* 1100000 ncompu 0.4)))
       )
     ]

    )
  )
;Caso de Prueba
(fabricaJimenezTux 5)

;Adornar este ejercicio !
(define (ejercicio12 n1 n2 )
  (if (<= n2 -1)
      (* n1 n2)
      (display "El numero 2 no es Negativo")
    )
  )
;Caso de Prueba Ejercicio12
(ejercicio12 12 -3)
 
(define (ejercicio13 n1 n2 )
  (if (and (>= n1 10 ) (<= n1 100) (>= n2 50 ) (<= n2 1000)  )
      (+ (* 2 n1) (expt n2 2))
      (display "\nNo cumple Parametros de Ejercicio 12\n")
    )
 )
(ejercicio13 1 60)