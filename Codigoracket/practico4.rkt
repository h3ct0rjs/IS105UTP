;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname parcial1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;Parcial Numero 1, Parte Practica Racket
;Hector F. Jimenez Saldarriaga.1115421345
;feedback:hfjimenez@utp.edu.co 
;UTP.20152 ISC
;====================================
(display "
\n============================================
\t.:::Parcial 1: PRACTICA:::.
    feedback:hfjimenez@utp.edu.co 
\t\tUTP.20152 ISC
\tSolucion a Ejercicios
============================================= ")

;Elaborar las Siguientes Funciones en Racket.

;1.Elaborar una función que le entre un numero positivo  y determinar si es de 1, 2, 3 o 4 dígitos(Usando Cond)
(define (digitos numero)
  (cond
    [(and (>= numero 0 ) (< numero 10)); si el digito esta entre [0,9] es de una cifras
     (begin
       (display "\n::El Digito: ")
       (display (* numero 1) ) ;Multiplique por uno para que mostrara el numero que ingresa el usuario,
       ;multiplicar por uno no afecta nada, ademas se requiere dos operandos en un parentesis.
       (display " .Es de UN digitos ")
      )
     ]
    [(and (>= numero 10  ) (<= numero 99)); si el digito esta entre [10,99] es de dos cifras
     (begin
       (display "\n::El Digito: ")
       (display (* numero 1) ) ;Multiplique por uno para que mostrara el numero que ingresa el usuario,
       ;multiplicar por uno no afecta nada, ademas se requiere dos operandos en un parentesis.
       (display " .Es de DOS digitos")
       )
     ]
    [(and (>= numero 100 ) (<= numero 999)); si el digito esta entre [100,999] es de tres cifras
     (begin
       (display "\n::El Digito: ")
       (display (* numero 1) ) ;Multiplique por uno para que mostrara el numero que ingresa el usuario,
       ;multiplicar por uno no afecta nada, ademas se requiere dos operandos en un parentesis.
       (display " .Es de TRES digitos")
       )
     ]
    [(and (>= numero 1000 ) (<= numero 9999));si el digito esta entre [100,999] es de tres cifras
     (begin
       (display "\n::El Digito: ") 
       (display (* numero 1) ) ;Multiplique por uno para que mostrara el numero que ingresa el usuario,
       ;multiplicar por uno no afecta nada, ademas se requiere dos operandos en un parentesis.
       (display " .Es de CUATRO digitos")
       )
     ]
    [(< 0);si el digito esta entre [100,999] es de tres cifras
       (display "EL NUMERO INGRESADO ES NEGATIVO, ESTE SOLO ES PARA NUMEROS POSITIVOS") 
     ]
    (error "HAZ COMETIDO UN ERROR")  ;Caso de Excepcion en caso de Error.
    
  )
)
;Caso de Prueba.
(display "\n Ejercicio 1:")
(digitos 55)  ;Por cuestiones de Tiempo no seleccione usar read, pero lo puede cambiar de forma manual.


;2.Elaborar una función que le entre un numero entero  y si es múltiplo de 4 mostrar en pantalla su mitad,
;si es múltiplo de 5 mostrar en pantalla su cuadrado y si es múltiplo de 6 mostrar en pantalla su cubo. 
;Validar que el número no sea mayor que 100 (Usando If)
(define (multiplos numero)
 (if (<= numero 100); Es realmente el numero menor o igual a 100
     (if (= 0 (modulo numero 4))
         (begin
           (display "\nEL NUMERO ES MULTIPLO DE 4\n")
           (display "Diviendo sobre 2 Da: ")
           (/ numero 2)
           ); Parte Positiva Primer if
         (if(= 0 (modulo numero 5) );Falsa de Primer If
            (begin
              (display "\nEL NUMERO ES MULTIPLO DE 5\n")
              (display "Elevendo al Cuadrado Da: ")
              (* numero numero)
              );Parte Positiva Segundo if
            (if (= 0 (modulo numero 6));Falsa de Segundo If
                (begin
                  (display "\nEL NUMERO ES MULTIPLO DE 6\n")
                  (display "Elevendo al Cubo Da: ")
                  (* numero numero numero)
                  )
                     (display "\nNO ES MULTIPLO NI DE 4,5,6")

                )
            
         )    
              
            )
       (display "\nEl numero es Mayor a 100"); Parte Negativa If mayor.
         ); Fin IF
     
     )
(display "\n Ejercicio 2:")
(multiplos 32)
