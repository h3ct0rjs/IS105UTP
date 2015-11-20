#lang racket
;Patrocinado por : Computer Security Group :P
;====================================
;Tercer Parcial
(display "
	 ▄▄▄·.▄▄ ·▄▄▄▄▄
	▐█ ▄█▐█ ▀.•██  
	 ██▀·▄▀▀▀█▄▐█.▪
	▐█▪·•▐█▄▪▐█▐█▌·
	.▀    ▀▀▀▀ ▀▀▀	
	Computer Security Group	
============================================
\t.:::Tercer Parcial:::.
feedback:hfjimenez@utp.edu.co
\t UTP.20152 ISC
Repositorio:https://github.com/heticor915/IS105UTP/
===============================================" )
#|NOTA: 
Algunos de los ejercicios aqui planteados ya los habia
realizado con anterioridad, como el menu, y dos ejercicios 
del parcial, por favor refierase a :
[1] Ejemplomenu: https://github.com/heticor915/IS105UTP/blob/master/Codigoracket/EjSolos/EjemploMenu.rkt
[2] Busqueda Coincidencial: https://github.com/heticor915/IS105UTP/blob/master/Codigoracket/Taller7.rkt
Linea 93-97|#

#|PARCIAL :
 1. Hacer una función que reciba un entero N y devuelva una cadena de longitud N, leyendo por pantalla 
  cada uno de los N caracteres de la cadena.
 2. Desarrollar una función llamada buscar que determine si un numero está en un vector  de números.
 3. Realizar una función que toma un elemento y una lista de números y retorna la lista sin el elemento.
 4. Hacer un menú que llame los anteriores programas.
|#

(define (menu)
  (display "
::::MENU DE PROGRAMAS ::::

1) Cadena de Longitud N.\t\t\t2) Busqueda Vectorial.
3) Eliminacion de Dato en Lista.\t\t
\n[!]Seleccione de la Lista el programa:\t")
  )

;-----------------
;Lista de Funciones Individuales:
;-----------------
;Cantidad de repeticiones de x en un vector
(define (conteoderepeticionesx? numeroaprobar vector)  ;Los parametros que se reciben son el numero a probar y el Vector
  (for/sum ([valor (in-vector vector)])         ;Lo que hace for/sum es iterarar dentro del vector si
    ;si el valor esta dentro del vector lo suma a la iteracion,en 1.de lo contrario 0. para mas info:
    ;http://docs.racket-lang.org/reference/for.html#%28form._%28%28lib._racket%2Fprivate%2Fbase..rkt%29._for%2Fsum%29%29
    (if (equal? valor numeroaprobar) 1 0))
  )
(define vectorglobal (vector 0 2 3 4 5 2 2 2 6)) ;Vector Statico, Este vector es posible llamarlo desde cualquier parte segun la 
(define listica '(1 2 3 4 5 6 7 5 5 5 12 13 14)) ;Lista estatica Global.
;documentacion esto es global

(define (eliminalista x lista) ; Recibe el valor a eliminar en la lista
         (if (null? lista)  ;Su la lista esta vacia se crea
             '() 
             (if (eq? x (car lista)) ; Si el primer valor de la lista es el valor a eliminar se elimina
                 (eliminalista x (cdr lista)) ;llamado recursivo para el resto de la lista 
                 (cons (car lista) (eliminalista x (cdr lista))) ; con cons se crea una lista nueva!
                 )
      )
  )

;Caso de prueba

;Todo este bloque tambien se puede reemplazar por un switch,solo que por academia,
;se hizo asi.
(define (seleccion choice)
  (cond
    [(= choice 1)
     (begin
       (display "\n1:::Cadena de Longitud N:::")
       (display "\n1La recursion no funcion :'(:::")
       ;(define (funcioncita cadena contador) 
;  ( begin
;	  (cond [(>= n (string-length cadena) )
;                 (begin 
;                   (funcioncita (string-ref cadena (read-line)) (+ contador 1))
;                   )
;                 cadena    
;             ]
;          )
;        )
; )
;(display "::Ejercicio 3::\n")
;(display "[*]Ingrese la Cantidad de Cadenas:\n")
;(define n(read))
;(funcioncita (make-string n) 0)   ;Recibe el valor de n, crea un string almacenado en cadena, y contador.

       ;Llamar a Procedimiento aqui
        )
     ]
    
    [(= choice 2)
     (begin
       (display "\n2:::Busqueda Vectorial:::")
       (display "\nIngrese valor de X a buscar en Vector:\t")      
       (conteoderepeticionesx? (read) vectorglobal) ; Llamado sencillo a la funcion de conteo del mismo valor
       (display "\nVector en el que se busco:\t")
       (display vectorglobal)
       (display "\n[!]EOF\t")
       )
     ]
    [(= choice 3)
     (begin
       (display "\n3:::Eliminacion de Dato en Lista:::")
       (display "La lista a Modificar es:\t")
       (display listica)
       (display "Sugerencia : Elimine el 5, ")
       (display "\nIngrese el Elemento que desea Eliminar:\t")
       (eliminalista (read) listica)
       )
     ]
    (display "Ninguna Opcion Valida, Lo Sentimos Saliendo...") 
    )
  )

(menu)
(define choice(read))
(seleccion choice)
