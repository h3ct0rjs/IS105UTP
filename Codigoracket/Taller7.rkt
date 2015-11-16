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



;2. Hacer una función que reciba un entero N y devuelva un vector de tamaño N, con
;enteros leidos por teclado.

;3. Hacer lo mismo que en el punto anterior, pero generando los datos aleatoriamente.
;4. Hacer una función reciba un vector de enteros y un numero X, busque el número
;X en el vector y devuelva la posición donde se encuentra la primera vez ese
;número en el vector. En caso de no estar debe devolver -1.

;5. Dado un vector V de enteros y un número X, devolver el valor de veces que está
;X en el vector.

;6. Dado un vector, hacer una función que invierta sus datos en el mismo y devuelva
;el vector invertido.

;7. Hacer una función que reciba un vector de enteros y un número X, la función
;debe borrar el número si lo encuentra y debe hacer SHIFT-LEFT (mover a la
;izquierda) todos los elementos siguientes y dejando el valor -1 en la última
;posición.

;8. Hacer una función que reciba un vector, y devuelva una copia en otro vector.

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
