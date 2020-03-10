#lang racket

(define (grande x y)
  (if(> x y) x y)
)

(define (mayor x y z w)
  (if (> (grande x y) (grande z w)) (grande x y) (grande z w))
)

(mayor 7 5 3 6)
(mayor 1 2 3 4)
(mayor 9 9 9 9)