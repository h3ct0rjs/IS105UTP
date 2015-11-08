;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname exacto) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define  (numexacto param1)
  (begin
   (if (exact? param1 )
       (begin
         (display "Numero Entero!")
         (newline)
         (display param1)
         (newline)
         (display( exact->inexact param1))
         )
       
      (display "Numero Real")
      )
   )
  )

(numexacto 5)