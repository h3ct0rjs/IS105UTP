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
      (display "\n.::No Existe Solucion Factible::.\n\n")
      )]
   );Fin Cond
  );Fin Define
;Caso de Prueba
(display "\n\nEcuacion Cuadratica\n")
(display "\nIngrese los Valores de a b c:")
(cuadratica (read) (read) (read))

;--------------------
;Valor Absoluto de Un numero.
(define  (valorabs n)
  (begin
    (display "\nEl valor Absoluto es :")
    (abs n)
    )
  )
;Caso de Prueba

(display "\n\nVALOR ABSOLUTO NUMERO!")
(display "\nIngrese valor a Probar:")
(valorabs (read))

;--------------------
(define (compradllantas n)
  (cond 
    [(< n 5)
     (begin  
       (display "Costo a $30000\n")
       (display "Total:$")
       (display(* n 30000))
       )
     ]
    [(>= n 5)
     (begin
       (display "Costo a $20000\n")
       (display "Total:$")
       (display (* n 20000))
       )
     ]
    
    )
  ) 
 ; Caso de Prueba
(display "\n\n::COMPRAVENTAS PIRELLI:LLANTAS::\n")
(display "Cantidad de Llantas a Comprar")
(compradllantas (read))

;--------------------

(define (supermercado totalcompra)
  (if (>= (random 100) 74)
      (begin
        (display  totalcompra)
        (display "\nDescuento Aplicado del 20%\n")
        (display "Total a Pagar: ")
        (display (- totalcompra (* totalcompra 0.2)))
        )
      (begin
        (display totalcompra)
        (display "\nDescuento Aplicado del 15%\n")
        (display "Total a Pagar: ")
        (display (- totalcompra (* totalcompra 0.15)))
        )
      )
  )
;Caso de Prueba
(display "\n\n--SUPERMERCADO JIMENEZ--\nFactura de Compra:")
(display "Ingrese el Total de Pago: $" )
(supermercado (read) )

;--------------------

(define (hemog edad nivelh)
  Q(cond
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
     ]
    )
  
    ;
  )  
  
;Caso de prueba
(display "\n\n\tLectura de Datos:ANALISIS HEMOGLOBINA: \n")
(display "Ingrese la Edad: ")
(define edad(read))
(display "Ingrese la NivelHemoglobina: ")
(define nivelh(read))
(hemog edad nivelh) ;Llamado de Funcion de Hemoglobina. 


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
       (display "Costo Unit. Computadora:$1.100.000\nDescuento Aplicado:20%\nTotal:$")
       (display (- (* 1100000 ncompu) (* 1100000 ncompu 0.2)))
       )
     ]
    [(> ncompu 10)
     (begin
       (display "Costo Unit. Computadora:$1.100.000\nDescuento Aplicado:40%\nTotal:$")
       (display (- (* 1100000 ncompu) (* 1100000 ncompu 0.4)))
       )
     ]

    )
  )
;Caso de Prueba
(display "\n\n##################################\n")
(display "Fabrica de Computadoras Jimenez Tux S.A.S\n")
(display "##################################\n")
(display "Ingresa la Cantidad de Computadores: ")
(fabricaJimenezTux (read) )
;Pendiente Universidad , Menu, Funcion Recursiva.

(define (ejercicio12 n1 n2 )
  (if (<= n2 -1)
      (* n1 n2)
      (display "El numero 2 no es Negativo")
    )
  )
;Caso de Prueba Ejercicio12
(display "Numero Negativo?")
(display "Ingrese dos numeros ")
(ejercicio12 (read) (read))
 
(define (ejercicio13 n1 n2 )
  (if (and (>= n1 10 ) (<= n1 100) (>= n2 50 ) (<= n2 1000)  )
      (+ (* 2 n1) (expt n2 2))
      (display "\nNo cumple Parametros de Ejercicio 12\n")
    )
 )

(display "\nEjercicio 13")
(display "\nIngrese Dos Numero para Evaluar Condiciòn:\n")
(ejercicio13 (read) (read))

(define (ejercicio14 n1 n2)
             (begin
               (display "\n:::Ejercicio 14:::")
               (display "\n:::Determinacion de Numero Mayor:::\n")
               (if (= n1 n2)
                   (display "Los numero son Iguales, Esto solo es para numeros diferentes")
                   (begin
                     (if(> n1 n2)
                          (printf "Numero N1:~a es Mayor que N2:~s " n1 n2)
                          (printf "Numero N2:~a es Mayor que N1:~s " n2 n1)
                        )
                     )
                   )
               )
             )

;Caso de Prueba Ejercicio 14.
(display "\nEjercicio 14")
(display "Determinacion de Numero Mayor:\n")
(ejercicio14 (read) (read) )

(define (ejercicio15 numerito )
  (if (>= numerito  0 )
      (begin
        (if (= ( modulo numerito 2) 0 )
            (display "\nEl numero es Par")
            (display "\nEl numero es Impar")
            )
        )
      (display "\n[*]Numero es Negativo!")
      )
  )
;Caso de Prueba Ejercicio 15.
(display "\n:::Ejercicio 15:::")
(display "\nIngrese un Numero: ")
(define numerito(read) )
(ejercicio15 numerito)

;Ejercicio 16
(define (ejercicio16 num1 num2)
  (if (> num1 num2);Si el primer numero es mayor que numero 2 
      (begin
        (display "\nSe resta los numeros:")
        (- num1 num2)
        )
      (if (= (modulo num2 3 ) 0 ); si el numero dos es multiplo de 3, multipliquelos
          (begin
            (display "\nSe Multiplican los numeros:")
            (* num1 num2)
            )
          (if(= num1 num2 ); Si ambos numeros son iguales entonces sumelos
             (begin
               (display "Los numeros Se Suman:")
               (+ num1 num2)
               );Si no es por que no se presenta con el caso del ejercicio
             (display "\n No presenta ninguna de las opciones del EJERCICIO 16.")
             )
            
          )

      )
   )

(display "\n:::Ejercicio 16:::")
(display "\nIngrese Dos Numeros")
(ejercicio16 (read) (read)); Los valores no quedan almacenados en ninguna parte
;de acuerdo al material de ayuda estos valores son volatiles.

;Ejercicio 17
(define (ejercicio17 numero)
  (if (and (>= numero 0) (<= numero 99 ))
      (begin
        (display "Suma de los Digitos Componentes:")
        (display "\nResultado es: ")
        (+ (quotient numero 10) (remainder numero 10 ))
        )
      (if (>= numero 100 )
          (display "El numero es de Tres Cifras")
          (display "El numero es Negativo")
          )
      )
  )
(display "\n:::Ejercicio 17:::")
(display "\nIngrese un Numero: ")
(ejercicio17 (read) )

;Sean 10,000 de inversion  a un año(12) es capitalizable mensualmente a una tasa de 12% anual. 
;si el cálculo fuese con capitalización anual, sería como sigue 10,000 X (1+12 %anual) = 11,200 

;sin embargo, como es capitalizable mensual, entonces los intereses generados en el mes anterior
;se sumarán al capital inicial y el cálculo es como sigue 10,000 X (1+(12% anual/12 meses))^12 = 11,268.25 
;eso es porque el primer mes invertirías 10,000 a una tasa de 1% mensual (12% entre 12 meses) y obtendrías 10,100
;al siguiente mes que esos 10,100 se reinvertirían otra vez a una tasa de 1% mensual dándote 10,201,
;y así sucesivamente.

;Es decir, a menor periodo de capitalización, mayor la cantidad otorgada por concepto de interés.

;Ejercicio 18
;Esta capitalizacion puede tomarse como recursiva, o puede generalizarce con matematicas, se puede hallar como interes compuesto.
(define (ejercicio18 ahorroinicial)
  (begin
    (display "\nAhorro Capitalizable a 10 años:$")
    (* ahorroinicial (expt (+ 1 (/ 0.36 120)) 12))
  )
  
  )
(ejercicio18 (read))

;Ejercicio 19

;Ejercicio 20 No se realiza ya que se debe hacer llamados recursivos, comentado por profesor.
;Detectar los numeros primos podria hacer uso del siguiente articulo de ciencia y tecnica:
;http://www.redalyc.org/pdf/849/84933912007.pdf
;http://www.redalyc.org/articulo.oa?id=84921327033

;Ejercicio 21

(define (aerolinea Destino Dias)
  (cond
    [(= Destino 1)
     (if (= Dias 0 )
         (display "Costo Tiquete $153USD")
         (if (= Dias 1)
             (display "Costo Tiquete $141.75USD")
             (if (>= Dias 2)
                 (display "Costo Tiquete $135USD")
                 (display "Su Tiquete no Presente Descuento"))
             )
         )
     ]; Es Bogota Nuestro Vuelo

     [(= Destino 2)
     (if (= Dias 0 )
         (display "Costo Tiquete $148.5USD")
         (if (= Dias 1)
             (display "Costo Tiquete $141.75USD")
             (if (>= Dias 2)
                 (display "Costo Tiquete $131.13USD")
                 (display "Su Tiquete no Presente Descuento"))
             )
         )
     ]; Es San Andres Nuestro Vuelo
     
    [(> Destino 3)

     (display "Lo Sentimos, El destino Ingresado no se encuentra Disponible")]; Es Bogota Nuestro Vuelo
   
    )
  )

(define (msgaerolinea)
  (begin
    (display "\n:::AEROLINEA JIMENEZ:::\n")
    (display "Destinos,Ingrese 1 o 2 Segun:
      [1]> Bogota
      [2]> San Andres \n")
    )
  );Destinos Bogota,San Andres

(msgaerolinea)
(display "\n[?]>")
(define Destino(read))
(display "Ingrese la Cantidad de Dias Anticipado a Comprar Tiquetes: ")
(display "\n[?]>")
(define Dias(read));Almacena la cantidad de Dias
(aerolinea Destino Dias)