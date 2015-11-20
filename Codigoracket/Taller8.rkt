;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Taller8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;#lang racket
;====================================
;Taller 8.0
;Listas en Dr Racket
;feedback:hfjimenez@utp.edu.co
;UTP.20152 ISC
;====================================
(printf "
============================================
\t.:::Taller 8.0:::.
Listas Dr Racket.
feedback:hfjimenez@utp.edu.co, brianruiz@utp.edu.co
\t UTP.20152 ISC
Repositorio:https://github.com/heticor915/IS105UTP
===============================================
NOTA:" )
;1. Hacer una función que reciba una lista y cuente de forma recursiva cuantos elementos hay en la lista.

;2. Hacer una función que devuelva el promedio de los datos de una lista de enteros.

;3. Hacer una función que reciba una lista y un dato a buscar. Se debe devolver la posición en la que se encuentra
;el dato la primera vez en la lista, o -1 sino existe.

;4. Hacer una función que reciba una lista y un dato y adicione el dato al final de la lista.

;5. Hacer una función que reciba una lista de enteros y devuelva el mayor valor contenido en la lista o -1 si está vacía.

;6. Hacer una función que reciba una lista de enteros e indique si está ordenada ascendentemente.

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
