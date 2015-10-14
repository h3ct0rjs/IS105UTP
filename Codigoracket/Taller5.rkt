;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Taller5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;;====================================
;Taller 5.0
;Recursividad en Dr Racket
;feedback:hfjimenez@utp.edu.co 
;UTP.20152 ISC
;====================================
(display "
============================================
\t.:::Taller 5.0:::.
      Recursividad
 feedback:hfjimenez@utp.edu.co 
\t   UTP.20152 ISC
Repositorio:https://github.com/heticor915/IS105UTP
=============================================== " )
;1 Hacer un programa que muestre por pantalla 10 veces el 
;mensaje de texto “hola”.
;Ejercicio 1

(define (msghola texto contadorini)
  (if (<= contadorini 10) 
      (begin
        (display texto)
        (newline)
        (msghola texto (+ contadorini 1))
        )
      (display "fin\n")
   ) 
)
(display "\nEJERCICIO 1\n")
(msghola "Hola" 1)
(display "")
;2.El mismo programa anterior pero mostrando el mensaje n veces.
;Ejercicio2
(define (msg2 texto contadorini nveces)
  (if (<= contadorini nveces) 
      (begin
        (display texto)
        (newline)
        (msg2 texto (+ contadorini 1) nveces)
        )
      (display "fin\n")
   ) 
)

(display "\nEJERCICIO 2\n")
(display "Ingrese la Cantidad nVeces a repetir Hola")
(msg2 "Hola" 1 (read))

;Ejercicio3
;Hacer un programa que escriba los primeros N números enteros
(define (primerosn contadori n)  
  (if (<= contadori n )
      (begin 
        (display  contadori)
        (newline)
        (primerosn (+ contadori 1) n)
        )
      (display "EOF\n")
      )
  )

(display "\nEJERCICIO 3\n")
(display "Muestra la Sucesion Sn=1,2,3,...,n-1,n")
(primerosn 1 (read)) ; Se utiliza un contador, la tecnica utilizada es incremental hasta n.
;Tambien se hubiear podido realizar con tecnica decremntal hasta 1.

;Ejercicio 4 
;Hacer una función que muestre la tabla de multiplicar
;de un número N

(define (tablas n i)
  (if(<= i 10)
     (begin
       (display n)
       (display "*")
       (display i)
       (display "=")
       (display (* n i))
       (display "\n")
       (tablas n (+ i 1))
     )
     (display "EOF\n")
   )
 )

(display "\nEJERCICIO 4\n")
(display "\nTablas de Multiplicar de n, n*1 hasta 10\n")
(display "Ingrese El N de Tabla de Multiplicar: ")
(tablas  (read) 1)


(define (tablas2 n j i); para este ejercicio la tabla es j*i=valor, donde j e i son contadores.
  (if (<= j n)
      (if(<= i 10)
         (begin
           (display n)
           (display "*")
           (display j)
           (display "=")
           (display (* j i))
           (display "\n")
           (tablas2 n j (+ i 1))           
           )
         (tablas2 n (+ j 1) i)
              )
      (display "EOF\n")
  )
)

(display "\nEJERCICIO 5\n")
(display "Tablas de Multiplicar hasta n\n")
(display "Ingrese El N para mostrar esas Tablas de Multiplicar: ")
(tablas2  (read) 1 1 )
;6. Hacer una función que calcule la sumatoria para los números enteros hasta N.
(define (sumatoria n m)
   (if (= n m)
      0
      (+ m (sumatoria n (- m 1)))))

(display "\nEJERCICIO 6\n")
(display "Calculo de Sumatoria hasta N\n")
(sumatoria 0 (read))

;7. Calculo del Factorial

(define (factorial x cont acu)   ;Explicación 1
  (cond 
    
    [(>= x cont)
     (factorial x (+ cont 1) (* acu cont))
     ]  
    
    [(= x 0) 
     (display 1)
     ]  
    
    [(< x 0) 
     "No existe"
     ]  
    (else 
     (display acu)
          )
          )
  )
  

(display "\nEJERCICIO 7\n")
(display "::FACTORIAL::\n")
(display "Ingrese El N para Obtener el Factorial:")
(factorial (read) 1 1)  ; Leemos el valor del usuario, denominado n en la funcion, nosotros inicializamos
;un contador que va de 1 hasta 1 que sea mayor que n.
;8

(display "\nEJERCICIO 8\n")
(display "::SUMATORIA::\n")

;9 Hacer una función que calcule la sumatoria de los números dados por la expresión x2 / 2. Para todos los números entre 1 y n.
 
;11. Calculo del Factorial
(define (elevar base exponente acumulador)
  (if (< exponente 0) 
      (display "Esto es Solo para Valores Positivos")
      (if (= exponente 0)
          (display acumulador)
          (begin 
            (elevar base (- exponente 1) (+ 0 (* base acumulador) ))
           
           )  
          )
      )
  )
(display "\nEJERCICIO 11\n")
(display "\nElevar sin Square y Expt\n")
(display "Ingrese la Base y Exponente: ")
(elevar (read ) (read) 1) ; Inicializamos acumulador en 1, solo en caso 


;12. Calculo del Factorial, Mismo de 11 solo que con signos cambiados
(define (elevar2 base exponente acumulador)
  (if (< exponente 0) 
      (display "Esto es Solo para Valores Positivos")
      (if (= exponente 0)
          (display acumulador)
          (begin 
            (elevar2 base (- exponente 1) (+ 0 (* base acumulador) ))
           
           )
          )
      )
  )
(display "\nEJERCICIO 12\n")
(display "\nElevar sin Square y Expt, Valores Negativos\n")
(display "Ingrese la Base y Exponente: ")
(elevar2 (read ) (read) 1) ; Inicializamos acumulador en 1, solo en caso 

;13. Calculo de Submultiplos.


;15.Hacer una función booleana que indique si un número es primo o no.
;Version de Gabriel alias LlaneroSolitario!
(define (primo n i)
  (if (>= n 2 )
      (if (= n 2)
          (display "Es primo")
          (if (< i n)
              (if (integer? (/ n i))
                  (display "No es primo" )
                  (primo n (+ i 1))
                  )
              
          (display "Es primo")

              )
          )

  (display "No es Primo")
  )
  )
(define (primox n) (primo n 2))
(display "\nEJERCICIO 15\n")
(display "Funcion Booleana n\n")
(display "Ingresa n : ")
(primox (read))


;funcion de fibonachi
(define (fibonachi n anterior actual cuenta)
  (if (= n 0 )
      0
      (if (<= cuenta n)
          (fibonachi n (+ actual anterior) anterior (+ cuenta 1))
          (display actual)
       )
   )
)


(display "\nEJERCICIO 16")
(display "\nFIBONACCI Serie\n")
(display "\n Ingrese N:\n")
(fibonachi (read) 1 0 1)   ; Serie de Fibonacci.
;20. Hacer un programa que indique los pasos a seguir para resolver el problema de las torres
;de Hanoi con n  anillosz

(define (inductivo anillos)
  (begin
    (display "\nLa Cantidad de Pasos para ")
    (display anillos)
    (display " Anillos son :")
    (display (- (expt 2 anillos) 1))
    (display "\nMetodo Totalmente Inductivo, De Matematicas\n") ;Tomado de aqui https://www.youtube.com/watch?v=lilBGvaOSy8
    (display "::Movimientos::")
    )
  )


;Se desea mover "3 anillos desde la torre A hacia la torre C haciendo usando de la torre B como auxiliar"
;Para trasladar todos los anillos desde la torre A hasta la torre C, tenemos que 
;trasladar los n-1 anillos superiores de la torre A hacia la torre B, para luego 
;trasladar el anillo restante N (el mas grande), hacia la torre C.

(define (Hanoi n a c b)   
   (if (> n 1)
       (+ (Hanoi (- n 1) a b c)
          ;Entonces para resolverlo se tiene que pasar los n-1 anillos superiores de A hacia
          ;B haciendo uso de C, esto es:
          ;(Hanoi (- n 1) a b c)
          (mover a c) 
          (Hanoi (- n 1) b c a)
          ;Pasar los anillos en B hacia C haciendo uso de A para colocarlos en orden por tamaño:
          ;(Hanoi (- n 1) b c a)
             )
       (mover a c)
       ;Mover el más grande de A hacia C:
       ;(mover a c)
   )
 )

(define (mover origen destino)
  (begin
    (display "Mueve un anillo") 
    (display " desde ") 
    (display origen) 
    (display " hacia la Torre ") 
    (display destino)
    (display "\n")
    1
    )
  ) ;Fin de Funcion de Movimiento. 
;Recomendado por Leonardo Monitor.
;http://www.tecn.upf.es/~vlopez/docencia/castellano/todoshtml/PIIIt1cas/node29.html
(display "\nEJERCICIO 20")
(display "\nTORRES DE Hanoi\n")
(display "\n Ingrese Cantidad de Anillos:\n")
(define anillos(read))
(inductivo anillos)
(Hanoi anillos "A" "C" "B") ; Las Torres estan arde

;24. Hacer una funcion que reciba como parametro un numero entero N, lea N numeros y devuelva el promedio
;de los datos leidos.

(define (promnaturales n acumulador contador)
  (cond
    [(<= contador n)
     (begin
       (promnaturales n (+ acumulador valor) (+ contador 1))
       )
     ]

    
    [else
     (display (/ acumulador n)) ]
    
    )
  )
(promnaturales (read) 0 0)
 