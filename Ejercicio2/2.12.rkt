#lang racket

(define (concatena lista)
  (if (empty? lista)
      '()
      (if (not (pair? (car lista)))
          (concatena (cdr lista))
          (cons (car lista) (concatena (cdr lista))))))

(concatena '((1 2)(a b)(3 4)))
(concatena '(a (b) c))
(concatena '(0 (1 (2) 1) (0 (1 (2)))))