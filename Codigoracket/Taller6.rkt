#lang racket
;;====================================
;Taller 6.0
;Vectores en Dr Racket
;feedback:hfjimenez@utp.edu.co
;UTP.20152 ISC
;====================================
(display "
============================================
\t.:::Taller 6.0:::.
Cadenas Dr Racket.
feedback:hfjimenez@utp.edu.co
\t UTP.20152 ISC
Repositorio:https://github.com/heticor915/IS105UTP
===============================================
NOTA:Ninguna hasta ahora.
" )


;1) Hacer una función que reciba una cadena de caracteres y devuelva otra mutable y con
;el contenido de la primera.
(define (mutable cadenita)
  (begin
    (display "Cadena Original es:")
    (display cadenita)
    )
  )
(display "::Ejercicio 1::")
(display "Ingrese su Cadena a Mutar:\t")   
(mutable (read))

;2) Hacer una función que reciba una cadena de caracteres y un carácter adicional. La
;cadena se debe retornar con el carácter anexaado al final de la misma.
(display "::Ejercicio 2::\n")
(display "[*]Ingrese la Cadena:\n")
(define cad1 (read-line))
(display "[*]Ingrese el Anexo:\n")
(define caracteranexo (read-line))
(string-append cad1 caracteranexo " " )


;3) Hacer una función que reciba un entero N y devuelva una cadena de longitud N,
;leyendo por pantalla cada uno de los N caracteres de la cadena.


;4) Hacer una función que reciba una cadena de caracteres mutable y la invierta en ella
;misma.


;5) Hacer una función que reciba una cadena de caracteres y devuelva otra cadena
;invirtiendo todos los caracteres de la primera.

(display "::Ejercicio 5 ::\n")
(display "[*]Ingrese la Cadena a Invertir:\n")
(define ca1 (read-line))		; Esta es una forma simple de almacenar un dato, aunque recuerde que en racket no existe asignacion, ni variables.

(define (invierte cadena)
  (list->string (reverse (string->list cadena)))
)
(invierte ca1)

;6) Haga una función que reciba dos cadenas de caracteres y devuelva otra cadena con la
;concatenación de las dos primeras.
(display "::Ejercicio 6::\n")
(display "[*]Ingrese las Dos Cadenas a Concantenar:\n")
(define cad1 (read-line))
(define cad2 (read-line))
(display "resultado\n")
(define concatena (string-append cad1 " " cad2 " " )) ;Se podria usar una funcion anonima con lambda.
(displayln concatena)

;7) Hacer una función que reciba una cadena de caracteres y cuente cuantas vocales tiene.


;8) Hacer una función que reciba una cadena de caracteres y devuelva otra sin las
;vocales.


;9) Construir un programa que lea un string con solo caracteres numéricos y devuelva el
;número que representa.

;10) Hacer una función que reciba una cadena de caracteres e indique si es palíndrome.
;Una cadena de caracteres es palíndrome si se lee igual al derecho que al revés.
;Ejemplo: “ojo”, “abcdedcba”, “a”, “dabalearrozalazorraelabad”.11) Hacer una función boolean que reciba dos cadenas de caracteres e indique si son
;iguales.

;12) Hacer una función que reciba dos cadenas de caracteres e indique si la segunda está
;incluida en la primera (es decir si es substring).
