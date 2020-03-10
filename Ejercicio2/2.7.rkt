#lang racket

(define (multiplica x lista)
  (if (null? lista)
      '()
      (cons (* x (car lista))
            (multiplica x (cdr lista)))))

(multiplica '4 '(-3))
(multiplica '4 '(1 2 3 4 5))