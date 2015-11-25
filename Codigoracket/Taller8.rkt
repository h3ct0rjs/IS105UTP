#lang racket
(require math)                       ;Multple Math Methods, like aritmethic mean.

;====================================
;Taller 8.0
;Listas en Dr Racket
;feedback:hfjimenez@utp.edu.co
;UTP.20152 ISC
;====================================
(printf "
	 ▄▄▄·.▄▄ ·▄▄▄▄▄
	▐█ ▄█▐█ ▀.•██  
	 ██▀·▄▀▀▀█▄▐█.▪
	▐█▪·•▐█▄▪▐█▐█▌·
	.▀    ▀▀▀▀ ▀▀▀	
	Computer Security Group	
============================================
\t.:::Taller 8.0:::.
Listas Dr Racket.
feedback:hfjimenez@utp.edu.co, brianruiz@utp.edu.co
\t UTP.20152 ISC
Repositorio:https://github.com/heticor915/IS105UTP
===============================================\n" )


;1. Hacer una función que reciba una lista y cuente de forma recursiva cuantos elementos hay en la lista.
(display " \n::Ejercicio 1::\n")
(display "Ingrese su Lista formato es: (valor1 valor2 valor3):\n")   
(let*  
    ((lista (read)))                ;Recibe Lista y lo guarda en lista
  
  (define (recursividad a b)
    (if  (empty? a)
         (begin
           (display "[!]Total de Elementos ")
           (display b)
           (newline)
           (display lista)
           )
         (recursividad (rest a) (+ b 1))
         )
    )
  (recursividad lista 0)
)

;2. Hacer una función que devuelva el promedio de los datos de una lista de enteros.
(display "\n\n::Ejercicio 2::\n")
(display "Ingrese su Lista\nEl formato CORRECTO  es: (valor1 valor2 valor3):\n")   
(let*  
    ((lista (read)))                ;Recibe la Lista del usuario
  (define (promedio a)             ;Funcion de Forma Local para promedio 
    (if  (empty? a)                ;Si la lista esta vacia es por que signifca que usuario no ingreso nada
         (display "[!]No hay Promedio la Lista esta Vacia ")
         (begin
           (display "\nEl promedio de la lista es: * ")
           (mean a)
           )
         )
    )
  (promedio lista )
)

;3. Hacer una función que reciba una lista y un dato a buscar. Se debe devolver la posición en la que se encuentra
;el dato la primera vez en la lista, o -1 sino existe.
;Tomo Como referencia : http://docs.racket-lang.org/reference/pairs.html#%28part._.List_.Searching%29
(display "\n\n::Ejercicio 3::\n")
(display "Ingrese su Lista\nEl formato CORRECTO  es: (valor1 valor2 valor3):\n")

(let*  
    ((lista (read)))                ;Recibe la Lista del usuario
    (display "\nIngrese el Valor a Buscar: *")
  (define (busquedalistica lista datobuscar)
    (let loop ((lista lista)
               (indice 0))
      (cond ((empty? lista) -1)
            ((equal? (first lista) datobuscar) indice)
            (else (loop (rest lista) (add1 indice)))
            )
      )
    )
  (busquedalistica lista (read))
)

;4. Hacer una función que reciba una lista y un dato y adicione el dato al final de la lista.
(display "\n\n::Ejercicio 4::\n")
(display "Ingrese su Lista\nEl formato CORRECTO  es: (valor1 valor2 valor3):\n")
(let*
    ((lista (read)))
  (display "\nIngrese dato a Agregar al Final: ")
  (define dato (read))
  (newline)
  (display (append lista dato))
 )

;5. Hacer una función que reciba una lista de enteros y devuelva el mayor valor contenido en la lista o -1 si está vacía.

(display "\n\n::Ejercicio 5::\n")
(display "Ingrese su Lista\nEl formato CORRECTO  es: (valor1 valor2 valor3):\n")   
(let*  
    ((lista (read)))                ;Recibe la Lista del usuario
  (define (mayorlista a)             ;Funcion de Forma Local para promedio 
    (if  (empty? a)                ;Si la lista esta vacia es por que signifca que usuario no ingreso nada
         (display "[!]No hay Promedio la Lista esta Vacia ")
         (begin
           (display "\nEl Valor Mayor en la lista es * ")
          (apply max a)
           )
         )
    )
  (mayorlista lista )
)

;6. Hacer una función que reciba una lista de enteros e indique si está ordenada ascendentemente.
; http://home.adelphi.edu/~siegfried/cs270/270rl10.html Ejemplo de Funciones de Ordenamiento.



;7. Hacer una función que reciba una lista y devuelva otra con los datos de la primera invertida. Nota: No se puede
;usar otra estructura de datos como un vector.


;8. Hacer una función que devuelva una lista con los datos que el usuario digite por teclado. 
;La entrada de datos termina cuando el usuario entre el número -1.

;9. Hacer una función que reciba dos listas y devuelva una lista con la concatenación de las dos anteriores.

;10. Hacer una función que reciba una lista y dos enteros positivos. Se debe devolver una sublista con los elementos que
;hay en las posiciones desde el primer número hasta el segundo, incluyéndolos.

;11. Hacer una función que reciba una lista de nombres (cadenas de caracteres) y devuelva la cadena de mayor longitud.

;12. Hacer una función que reciba números enteros y devuelva una lista de listas. La lista debe contener 4 listas.
;En la primera están los números impares negativos, en la segunda los pares negativos, en la tercera los impares positivos y
;en la última los pares positivos. Recuerde que la lista vacía se crea con (list ).
