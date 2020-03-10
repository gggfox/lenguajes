#lang racket

(define (entero lista)
  (apply string-append                  
         (map (lambda (e)
                (number->string e))
              lista)))


(entero '(3 4 7))
(entero '(-2 4 3 1)) 