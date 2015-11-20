#lang racket
; ▄▄▄·.▄▄ ·▄▄▄▄▄
;▐█ ▄█▐█ ▀.•██  
; ██▀·▄▀▀▀█▄▐█.▪
;▐█▪·•▐█▄▪▐█▐█▌·
;.▀    ▀▀▀▀ ▀▀▀
;Computer Security Group
;====================================
;Taller 7.0
;Vectores en Dr Racket
;feedback:hfjimenez@utp.edu.co
;UTP.20152 ISC
;====================================
(display "
	 ▄▄▄·.▄▄ ·▄▄▄▄▄
	▐█ ▄█▐█ ▀.•██  
	 ██▀·▄▀▀▀█▄▐█.▪
	▐█▪·•▐█▄▪▐█▐█▌·
	.▀    ▀▀▀▀ ▀▀▀	
	Computer Security Group	
============================================
\t.:::Taller 7.0:::.
Vectores Dr Racket.
feedback:hfjimenez@utp.edu.co
\t UTP.20152 ISC
Repositorio:https://github.com/heticor915/IS105UTP
===============================================" )
;VECTORES:
;Notas Vectores 
;1. Hacer una función que reciba un valor entero N y devuelva un vector de tamaño
;N, donde cada posición contiene el valor -1.
(define (creavector n)
  (display (make-vector n -1)) ;crea un vector con valor -1 
 )
(display "\n\n:::::::Ejercicio 1:::::::\n")
(display "[*]Ingrese valor de N:\n")
(define n (read))             ;Con read-line no funcionara, existe un problema de strings !
(creavector n)

;2. Hacer una función que reciba un entero N y devuelva un vector de tamaño N, con
;enteros leidos por teclado.

(display "\n:::::::Ejercicio 2:::::::\n")
(display "[*]Ingrese La cantidad de N:\t")
(let*
    (( vectorcreado (make-vector (read))))
  (define (recursividad contador)
    (if (< contador (vector-length vectorcreado))
        (begin
          (display "\n[!]Ingrese el Elemento:")
          (display (+ contador 1))
          (newline)
          (vector-set! vectorcreado contador (read))
          (recursividad (+ contador 1))
          )
        (newline) 
 )
)
(recursividad 0)
(display "[OK]El vector Final es: ")
  vectorcreado
  
)

;3. Hacer lo mismo que en el punto anterior, pero generando los datos aleatoriamente.

(display "\n:::::::Ejercicio 3:Numeros Aleatorios:::::::\n")
(display "[*]Ingrese La cantidad de N:\n")
(let*
    (( vectorcreado (make-vector (read))))
  (define (recursividad contador)
    (if (< contador (vector-length vectorcreado))
        (begin
          (display "\n[!]Ingrese el Elemento:")
          (display (+ contador 1))
          (newline)
          (vector-set! vectorcreado contador (random 20))
          (recursividad (+ contador 1))
          )
        (newline) 
 )
)
(recursividad 0)
(display "[OK]El vector Final es: ")
  vectorcreado
)

;4. Hacer una función reciba un vector de enteros y un numero X, busque el número
;X en el vector y devuelva la posición donde se encuentra la primera vez ese
;número en el vector. En caso de no estar debe devolver -1.
;Funcion encargada de sumar la cantidad de x repetida, recibe el numero a probar, el vector

(define (conteoderepeticionesx? numeroaprobar vector)
  (for/sum ([valor (in-vector vector)])         ;Lo que hace for/sum es iterarar dentro del vector si
    ;si el valor esta dentro del vector lo suma a la iteracion,en 1.de lo contrario 0.
    (if (equal? valor numeroaprobar) 1 0))
  )

(define vectorglobal (make-vector 10) )
(display "\n:::::::Ejercicio 4:BUSQUEDA de Numero X :::::::\n")
(display "[*]Se utilizara el Vector del Ejercicio 3:\nIngresa la cantidad de valores del vector N: \t")
(let*                                            ;Permitir 
    (( vectorcreado (make-vector (read))))
    (define (recursividad contador)
    (if (< contador (vector-length vectorcreado))
        (begin
          (display "\nGenerando Vector Aleatorio:\t")
          (display (+ contador 1))
          (newline)
          (vector-set! vectorcreado contador (random 20))
          (recursividad (+ contador 1))
          )
        (newline) 
 )
)
(recursividad 0)
(display "[OK]El vector Final es: ")
   vectorcreado ; Este es la lista del vector
  (vector-append vectorglobal vectorcreado )
)
(display "\n\nIngrese el Numero X a Buscar")
(define numerox (read))
(display "Se encontraron las siguiente cantidad de coincidencias:")
(conteoderepeticionesx? numerox vectorglobal) ; Llamado sencillo a la funcion de conteo del mismo valor


;5. Dado un vector V de enteros y un número X, devolver el valor de veces que está
;X en el vector.
(display "\n:::::::Ejercicio 5: SE REALIZO EN LA 4::\n")
(display "Utilizando Procedimiento Anterior\n")
(display "El Vector Utilizado es:")
(define v (vector 0 2 3 4 5 2 2 2 6))
(newline)
(display "Coincidencias")
(conteoderepeticionesx?  2 v) ;Prueba de Valor Estatico para la frecuencia repetida.
;6. Dado un vector, hacer una función que invierta sus datos en el mismo y devuelva
;el vector invertido.
(display "\n:::::Ejercicio 6::::::::\n")
(display "Utilizando el Vector V: ")
(display v)
(display "\nEl reverso es:")
(display (list->vector(reverse(vector->list v))))

;7. Hacer una función que reciba un vector de enteros y un número X, la función
;debe borrar el número si lo encuentra y debe hacer SHIFT-LEFT (mover a la
;izquierda) todos los elementos siguientes y dejando el valor -1 en la última
;posición.


;8. Hacer una función que reciba un vector, y devuelva una copia en otro vector.
(define (creavector n)
  (display (make-vector n -1)) ;crea un vector con valor -1 
 )
;Agregar un vector Global !


(display "\n\n:::::::Ejercicio 8:::::::\n")
(display "[*]Ingrese valor de N:\n")
(define n (read))             ;Con read-line no funcionara, existe un problema de strings !
(creavector n)
()


;9. Hacer una función que reciba un vector de enteros y devuelva el promedio de los
;datos existentes.

;10. Hacer una función que reciba un vector de enteros y devuelva la posición del
;mayor valor de los datos existentes.

;11. Dado un vector hacer una función que invoque a la anterior e indique por pantalla
;cual es el valor máximo del vector.

;12. Hacer una función que reciba un vector de enteros e indique si está ordenado
;ascendentemente.

;13. Hacer una función que reciba un vector de enteros y lo ordene ascendentemente.

;14. Hacer una función que lea por teclado N nombres de personas, los guarde en un
;vector y los muestre después por pantalla.

;15. Un vector es un arreglo unidimensional que permite manejar una lista de datos del
;mismo tipo. Una matriz es un arreglo bidimensional que se puede representar
;como un vector de vectores. Hacer una función que reciba dos enteros N (filas) y
;M (columnas), lea por pantalla N x M enteros y los guarde en la matriz. La
;función debe devolver la matriz (un vector de vectores de tamaño N, donde cada
;vector tiene M enteros).

;16. Hacer el mismo ejercicio pero generando los números aleatoriamente.

;17. Hacer una función que reciba una matriz y muestre los datos por pantalla con N
;filas de M enteros.

;18. Hacer una aplicación que permita hacer el manejo de un vector de estudiantes. De
;cada estudiante se tiene el nombre, el codigo y el promedio academico. El
;programa debe permitir adicionar, consultar, modificar el promedio de un 
;estudiante dentro del vector. Además debe permitir listar los estudiantes que hay
;registrados. El programa debe presentar un menui de opciones, donde cada opcion
;corresponde a las operaciones mencionadas (cada vez que ejecute una opcion
;debe volver al menu principal) y como ultima opción salir de la aplicación.
