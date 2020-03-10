#lang racket

(define (profundidad? lista x)
  (if (>= (profundidad lista) x)
      true
      false))

(define (profundidad lista)
  (if (not (pair? lista))
      0
      (max (add1 (profundidad (car lista))) (profundidad (cdr lista)))))

(profundidad? '(a b c) 2)
(profundidad? '(a (b) c) 2)
(profundidad? '(0 (1 (2) 1) 0) 3)