#lang racket

(define (remove-first lst element)
  (cond
    [(null? lst) `()]
    [(= (car lst) element) (cdr lst)]
    [else (cons (car lst) (remove-first (cdr lst) element))]))

(remove-first `(1 2 3) 1)
(remove-first `(1 2 3) 2)
(remove-first `(1 2 3) 3)
(remove-first `(1 1 3) 1)
(remove-first `() 3)

