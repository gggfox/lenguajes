#lang racket

(define (tabla x y z)
  (if (equal? x 0)
      '()
      (cons (tabla-aux y z) (tabla (- x 1) y z))))

(define (tabla-aux y z)
  (if (equal? y 0)
      '()
      (cons z (tabla-aux (- y 1) z))))

(tabla 1 1 'a)
(tabla 2 4 0)