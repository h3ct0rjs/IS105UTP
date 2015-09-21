;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Taller3ingresodedatos) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;====================================
;Taller 3.0
;Programas con funciones simples en Dr Racket
;feedback:hfjimenez@utp.edu.co 
;UTP.20152 ISC
;====================================
;ToDo:
;Se debe realizar un menu que muestre la lista, de los programas
;el elegido por el usuario se realiza. 
(display "
\n============================================
\t.:::Taller 3.0:::.
Programas de funciones Simples:DrRacket
 feedback:hfjimenez@utp.edu.co 
\t\tUTP.20152 ISC
Repositorio:https://github.com/heticor915/IS105UTP
===============================================
Descripción: Los ejercicios estan por,
orden se ejecuta un titulo y un caso de prueba,
para poder ver el resultado se debe modificar
el archivo por que esto se realizo antes de ver read,
Se debe hacer uso de racket en lenguaje avanzado\n")
;::DESCRIPCION::
;Los Ejercicios se encuentra enumerados por orden
;Numerico, se utiliza el numero minimo de instrucciones.
;Para correr este Script se debe usar el lenguaje en
;estudiante avazando

;1) Resolver la expresión n**2 + n + 24
(define (ejercicio1 n) 
    (+ (expt n 2) (+ n) 24)
  )
;Caso de prueba
(display "\n1.Solucion a Expresion Matematica")
(display "\nIngrese valor de n: ")
(define n(read))
(display "\nSolucion: ")
(ejercicio1  n) 


;2) Resolver la expresión (1/3) - n**3 * 55.
(define (ejercicio2 m)
  (- (/ 1 3) (* (expt m 3) 55))
  )
;Caso de prueba

(display "\n2.Solucion a Expresion Matematica 2")
(display "\nIngrese valor de n: ")
(define n1(read))
(display "\nSolucion: ")
(ejercicio2 n1)

;3) Medir la longitud de la circunferencia, dado el radio como parámetro.
(define (longitudc r)
  (* 2 pi r)
)
;Caso de prueba

(display "\n3.Longitud de Circunferencia")
(display "\nIngrese valor de Radio: ")
(define r(read))
(display "\nLongitud Circunferencia: ")
(longitudc r)


;4) Hacer una función que eleve al cuadrado sin usar expt o sqr .
(define (cuadradito v)
  (* v v)
)
;Caso de prueba
(display "\n4.Elevar al Cuadrado")
(display "\nIngrese valor a elevar: ")
(define cu(read))
(display "\nCalculo de n cuadrado: ")
(cuadradito cu )

;5) Calcular el área de un círculo.
(define (circuloarea ar)
   (* pi (expt ar 2) )
  )

;Caso de prueba

(display "\n5.Calcular el área de un círculo.")
(display "\nIngrese valor Radio: ")
(define rc(read))
(display "\nCalculo de n cuadrado: ")
(circuloarea rc)

;6) Encontrar el área de un anillo, conociendo el radio interior y el exterior.
(define (areanillo rexterior rinterior)
  (* pi (- rexterior rinterior))
 )
;Caso de prueba
(areanillo 5 2)

;7) Dado un valor de temperatura en grados Celsius, convertirla a grados Fahrenheit.
(define (conversion celsius)
  (+ (* celsius (/ 9 5 )) 32)
)
;Caso de Prueba!
(conversion 1)

;8) Dado un valor de temperatura en grados Fahrenheit, convertirla a grados Celsius.
(define (conversion2 farenheit)
  (* (- farenheit 32 ) (/ 5 9))
)
;Caso de Prueba!
(conversion2 1)

;9) Calcular el área de un trapecio regular dada base mayor, base menor y la altura.
(define (areatrapecio basemayor basemenor altura)
  (/ (* (+ basemayor basemenor) altura ) 2 )
  )
;Caso de Prueba
(areatrapecio 15 12 10)

;10) Dados la base mayor, la base menor y la altura de un trapecio, calcular el perímetro.
(define (perimetrotrapecio basemayor basemenor altura)
  (+ (* 2 altura ) basemayor basemenor)
  )

;Caso de Prueba
(perimetrotrapecio 15 12 10)

;11) Calcular el volumen de una esfera
(define (volumenesfera radio)
  (* (/ 4 3 ) pi ( expt radio 3))
)
;Caso de Prueba
(volumenesfera 3)

;12) Calcular el volumen de una pirámide de base cuadrada.

(define (volpiramide areabase altura)    ;la operacion es la area en la base por la altura,div 3.
  (/ (* areabase altura) 3)  
 )
;Caso de Prueba!
(volpiramide 40 10)

;OJOOOOO!
;13) Calcular el área exterior de la pirámide del ejercicio anterior.
;revisar !
;(define (arealpiramide poligono )    ;Area Exterior, tambien se conoce como area lateral.
;  )
;OJOOOOO!

;14) Encontrar el volumen de un cilindro.
(define (volumencilindro radio alturac)    ;volum
  (* pi (expt radio 2) alturac )
)
;Caso de Prueba !
(volumencilindro 25 10)

;15) Calcular el área de la superficie de un cilindro.
(define (areasuperficie altura radio )
  (* 2 pi radio (+ altura radio))

  )
;Caso de Prueba
;(area altura )
;(define valor(read))
;uso es : (funcion valor)

;Conversion de Unidades Fue Patrocinada Gracias a xD:
;http://www.metric-conversions.org/es/longitud/
;16) Convertir de pulgadas a centímetros y otro programa que haga lo contrario.
(define (pul2centimetro pulgadas)
  (* 2.5400 pulgadas) ; 1 Pulgada segun SI equivale a 2.54 cm.
)
;Caso de Prueba de Pulgadas a Centimetros, 
(pul2centimetro 2)

;17) Convertir de pies a pulgadas

(define (pie2pulgada pies)
  (* 12 pies) ; 1 Pie segun SI equivale a 12 in.
)
;Caso de Prueba de Pies a Pulgadas, 
(pie2pulgada 2)

;18) Convertir de yardas a pies.
(define (YardasaPies yardas)
  (* yardas 3)
  )
;Caso de Prueba de Yardas a Pies
(YardasaPies 5)

;19) Convertir de millas a yardas.
(define (Md2Yarda millas)
  (* 1760 millas) ; Conversion Utilizada fue :
  ;Segun http://www.metric-conversions.org/es/longitud/tabla-de-conversion-de-millas-a-yardas.htm
)

;Caso de Prueba de Pies a Pulgadas, 
(Md2Yarda 2)


;20) Convertir de millas a centímetros usando las funciones anteriores.
(define (milla2centimetro milla)
(* 1.6093e+5 milla)
  )

;Caso de Prueba
(milla2centimetro 2)


;21) Dadas cantidades de billetes recibidos en denominaciones de $1.000, $2.000, $5.000,
;$10.000, $20.000 y $50.000, obtener como resultado el valor de del conjunto de todos
;los billetes.
(define (billetes den1 den2 den3 den4 den5 den6 )
  (+ (* den1 1000) (* den2 2000) (* den3 5000) (* den4 10000) (* den5 20000) (* 50000 den6))
  )
;22) De una solucion para la ecuación a x 2 + b x + c = 0 para valores de a, b y c dados.
(define (cuadratica a b c)
  (begin
    (display ":::\nCalculo de Cuadratica :::\n")
    (display "x1: ")
    (display (/ (+ (- b) ( sqrt (- (expt b 2) (* 4 a c)) )) (* 2 a)) )
    (display "\nx2: ")
    (display(/ (- (- b) ( sqrt (- (expt b 2) (* 4 a c)) )) (* 2 a)) )
    
    )
)
(cuadratica 3 5 8)
;23) Teniendo los lados de un triángulo rectángulo, encontrar el valor de la hipotenusa.
(define (hipotenusa ladoa ladob )
  ; Saca raiz cuadrada de la suma de los lados al cuadrado
  (sqrt (+ (expt ladoa 2) (expt ladob 2)))
)
;Caso de Prueba
;(hipotenusa ladoa ladob)

;24) Teniendo un cubo de lado con valor n, calcular cual es el volumen de la mayor esfera
;que cabe dentro del cubo.
(define (volesferamayor n)
  (* (* (/ 4 3) pi ) (expt (/ n 2) 3))
)
;Caso de Prueba
(volesferamayor 5)

;25) Teniendo un cubo de lado con valor n, calcular cual es el volumen de la menor esfera
;que contiene al cubo.
(define (esferamenor ladon)
(/ (* (expt ladon 3 ) pi (sqrt 3 ) ) 2 )
 )
 
(esferamenor 5)

;Cambiar Orden.
;26) Si la probabilidad de que caiga 6 al lanzar un dado es de 1/6, cual es la probabilidad
;de que caiga 6 en todos los n lanzamientos de un dado.
(define (dado lanzamientos)
  (* (/ lanzamientos 6 ) 100 )
 )

;27) Si la probabilidad de que caiga 6 al lanzar un dado es de 1/6, cual es la probabilidad
;de que caiga al menos una vez 6 en n lanzamientos del dado.
(define (probabilidad n)
  (* (/ 1 (expt 6 n) ) 100)   ;La ecuacion de probabilidad es : (1/6**n)*100
)

