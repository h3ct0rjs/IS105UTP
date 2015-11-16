#lang racket
; ▄▄▄·.▄▄ ·▄▄▄▄▄
;▐█ ▄█▐█ ▀.•██  
; ██▀·▄▀▀▀█▄▐█.▪
;▐█▪·•▐█▄▪▐█▐█▌·
;.▀    ▀▀▀▀ ▀▀▀
;Computer Security Group
;;====================================
;Taller 6.0
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
\t.:::Taller 6.0:::.
Cadenas Dr Racket.
feedback:hfjimenez@utp.edu.co
\t UTP.20152 ISC
Repositorio:https://github.com/heticor915/IS105UTP
===============================================" )

;1) Hacer una función que reciba una cadena de caracteres y devuelva otra mutable y con
;el contenido de la primera.
(define (mutable cadenita)
  (begin
    (display "Cadena Original es:")
    (display cadenita)
    (display ( list->string (reverse (string->list cadenita))))
 
    )
  )

(display "::Ejercicio 1::\n")
(display "Ingrese su Cadena a Mutar:\n")   
(mutable (read-line))

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
(define (s n) 
	(make-string n #\H)		;Crea cadena de n caracteres.
 )
(display "::Ejercicio 3::\n")
(display "[*]Ingrese valor de N:\n")
(s (read))		;Con read-line no funcionara, existe un problema de strings !

;4) Hacer una función que reciba una cadena de caracteres mutable y la invierta en ella
;misma. ??? Esta descripcion no es entendible!, Es la misma que punto 5
(display "::Ejercicio 4 ::\n")
(display "RESUELTA EN EL SIGUIENTE EJERCICIO:\n")

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
;Punto, esta es la version que brian implemento, utiliza let para poder definir una funcion de otra
(display "::Ejercicio 7::\n")
(display "[*]Conteo de Vocales:\n")
(let*
	[(string (read-line))];captura la primera cadena
	(define (recursividad a b)
	 (cond 
	    ((< a 0) (display b))	;Se va analizando la cadena,primero en busca de la latra a, despues e, ...etc
	    ((equal? #\a (string-ref string a)) (recursividad (- a 1) (+ b 1)))   ;si a esta, se increme la cantidad de vocal a
	    ((equal? #\e (string-ref string a)) (recursividad (- a 1) (+ b 1)))
	    ((equal? #\i (string-ref string a)) (recursividad (- a 1) (+ b 1)))
	    ((equal? #\o (string-ref string a)) (recursividad (- a 1) (+ b 1)))
	    ((equal? #\u (string-ref string a)) (recursividad (- a 1) (+ b 1)))
   	 (else (recursividad (- a 1) b))
   ) 
  )	;Fin de la funcion recursiva
(display"La Cantidad de Vocales es: ")
((lambda (a) (recursividad (- (string-length string) 1 )0))#t))  ; Lambda permite utilizar una especie de funcion anonima

;8) Hacer una función que reciba una cadena de caracteres y devuelva otra sin las
;vocales.



;9) Construir un programa que lea un string con solo caracteres numéricos y devuelva el
;número que representa.

(define (c_str_nro cadena)
  (aux_c_str_nro cadena 0 0)
)
;Función aux_c_str_nro: Función auxiliar que devuelve el numero construidos de los dígitos del string
;Plantilla
(define (aux_c_str_nro cadena nvo_nro control)
  (if (< control (- (string-length cadena) 1))
      (aux_c_str_nro cadena (+ (* nvo_nro 10) (* (ascii (substring cadena control (+ control 1))) 10)) (+ control 1))
      (+ nvo_nro (ascii (substring cadena control (string-length cadena) ) ))
      )
  )
;Función ascii: Función que devuelve el numero (uno), correspondiente al carácter entregado
;Plantilla
(define (ascii cadena)
	(cond 
		[ (string=? cadena "0") 0]
		[ (string=? cadena "1") 1]
		[ (string=? cadena "2") 2]
		[ (string=? cadena "3") 3]
		[ (string=? cadena "4") 4]
		[ (string=? cadena "5") 5]
		[ (string=? cadena "6") 6]
		[ (string=? cadena "7") 7]
		[ (string=? cadena "8") 8]
		[ (string=? cadena "9") 9]
		)
	)

(display "::Ejercicio 8::\n")
(display "Tomado de Libro y Referencia\n")
(* (c_str_nro "9813") 10)		;Se debe cambar valor manual pues string->number no funciona muy bien !

;10) Hacer una función que reciba una cadena de caracteres e indique si es palíndrome.
;Una cadena de caracteres es palíndrome si se lee igual al derecho que al revés.
;Ejemplo: “ojo”, “abcdedcba”, “a”, “dabalearrozalazorraelabad”.11) Hacer una función boolean que reciba dos cadenas de caracteres e indique si son
;iguales.

;Tomado de Rosettacode.org http://rosettacode.org/wiki/Palindrome_detection#Racket

(define (palindrome str)
  (let* (
  			[lst (string->list (string-downcase str))]
  			[slst (remove* '(#\space) lst)]
  		)
  		(string=? (list->string (reverse slst)) (list->string slst))
  		)
)

(display "::Ejercicio 10::\n")
(display "[*]Ingrese su Palabra Palindrome?:\n")
(if (palindrome (read-line))
		(display "[OK]La Palabra es Palindrome,Leelo al Reves :)\n")
		(display "[!!]Lo Siento No es Palindrome\n")
	)

;12) Hacer una función que reciba dos cadenas de caracteres e indique si la segunda está
;incluida en la primera (es decir si es substring).

