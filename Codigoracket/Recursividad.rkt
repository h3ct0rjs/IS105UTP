;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname r) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

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
      (display "EOF")
  )
)

(display "\nEJERCICIO 5\n")
(display "\nTablas de Multiplicar hasta n\n")
(display "Ingrese El N para mostrar esas Tablas de Multiplicar: ")
(tablas2  (read) 1 1 )