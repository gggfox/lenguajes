#lang racket

(define (intercala lista1 lista2)
  (cond ((null? lista1) lista2)
        ((null? lista2) lista1)
        (else (cons (car lista1) (cons (car lista2) (intercala (cdr lista1) (cdr lista2)))))))

(intercala '(1 2 3) '(4 5 6)) 
(intercala '(1 2 3 4) '(5 6))
(intercala '(1 2) '(3 4 5 6))