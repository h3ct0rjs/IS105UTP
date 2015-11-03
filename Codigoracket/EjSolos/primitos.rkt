;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname primitos) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;15.15. Hacer una función booleana que indique si un número es primo o no.
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

(primox (read))