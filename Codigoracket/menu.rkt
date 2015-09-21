;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname menu) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Funcion menu.

(define (menu)
  (display "\n::::MENU DE PROGRAMAS ::::
.::LISTA::.
1) Expresión n 2 + n + 24.\t\t\t2) Expresión (1/3) - n 3 * 55.
3) Longitud de la circunferencia.\t\t4) Elevar al  cuadrado.
5) Area de un círculo.\t\t\t\t6) Area Anillo.
7) Fahrenheit->Celsius.\t\t\t\t8) Fahrenheit->Celsius.
9) Area de un Trapecio.\t\t\t\t10) Perimetro de un Trapecio.
11) Volumen de una Esfera\t\t\t12) Volumen de una Pirámide de Base Cuadrada.
13) Area exterior de la pirámide.\t\t14) Volumen de un cilindro.
15) Area de la superficie de un cilindro.\t16) Conversion: Pulgadas->Centímetros.
17) Conversion: Pies->Pulgadas.\t\t\t18) Conversion: yardas->Pies.
19) Conversion de millas a yardas.\t\t20) Conversion de millas a centímetros.
21) Denominaciones de Billetes.\t\t\t22) Solucion a ax2+ bx +c = 0 .
23) Calculo de Hipotenusa.\t\t\t24) Volumen:Mayor Esfera que cabe Dentro del \tCubo.
25) Volumen: Menor Esfera,que Contiene Cubo.\t26) Probabilidad de Dados 1.
27) Probabilidad de Dados 2.
\n[!]Seleccione de la siguiente Lista el programa a ejecutar:")
  )

(define (seleccion choice)
  (cond
    [(= choice 1)
     (display "Selecciono 1 ")
     ]
    [(= choice 2)
     (display "Selecciono 2 ")
     ]
    [(= choice 3)
     (display "Selecciono 3 ")
     ]
    [(= choice 4)
     (display "Selecciono 4 ")
     ]
    [(= choice 5)
     (display "Selecciono 5 ")
     ]
    [(= choice 6)
     (display "Selecciono 6 ")
     ]
    [(= choice 7)
     (display "Selecciono 7 ")
     ]
    [(= choice 8)
     (display "Selecciono 8 ")
     ]
    [(= choice 9)
     (display "Selecciono 9 ")
     ]
    [(= choice 10)
     (display "Selecciono 10 ")
     ]
    [(= choice 11)
     (display "Selecciono 11")
     ]
    [(= choice 12)
     (display "Selecciono 12 ")
     ]
    [(= choice 13)
     (display "Selecciono 13 ")
     ]
    [(= choice 14)
     (display "Selecciono 14 ")
     ]
    [(= choice 15)
     (display "Selecciono 15 ")
     ]
    [(= choice 16)
     (display "Selecciono 16 ")
     ]
    [(= choice 17)
     (display "Selecciono 17 ")
     ]
    [(= choice 18)
     (display "Selecciono 18 ")
     ]
    [(= choice 19)
     (display "Selecciono 19 ")
     ]
    [(= choice 20)
     (display "Selecciono 20 ")
     ]
    [(= choice 21)
     (display "Selecciono 21 ")
     ]
    [(= choice 22)
     (display "Selecciono 22 ")
     ]
    [(= choice 23)
     (display "Selecciono 23")
     ]
    [(= choice 24)
     (display "Selecciono 24 ")
     ]
    [(= choice 25)
     (display "Selecciono 25")
     ]
    [(= choice 26)
     (display "Selecciono 26 ")
     ]
    (display "Ninguna Opcion Valida")
    )
  )

(menu)
(define choice(read))
(seleccion choice)