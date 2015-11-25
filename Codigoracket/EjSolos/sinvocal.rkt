#lang racket

(define (cadena read));Procedimiento para leer cadena

(define (Tamaño )
  (string-length Cadena)
  )

(define  (sinvocal cad tamaño index)
(if (= tamaño index )
    (display "")
    (begin
      (if (or
           (char-ci=? (string-ref cadena cad) index #\a)
           (char-ci=? (string-ref cadena cad) index #\e)
           (char-ci=? (string-ref cadena cad) index #\i)
           (char-ci=? (string-ref cadena cad) index #\o)
           (char-ci=? (string-ref cadena cad) index #\u)
           )
          (display "")
          (display (string-ref (cadena cad ) index ))
          
          )
      (sinvocal cad tamaño (+ index 1))
      )
    )
  
  )