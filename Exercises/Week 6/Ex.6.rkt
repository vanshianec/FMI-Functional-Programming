#lang racket

(define (remove-all lst element)
  (cond
    [(null? lst) `()]
    [(= (car lst) element) (remove-all (cdr lst) element)]
    [else (cons (car lst) (remove-all (cdr lst) element))]))

(remove-all `(1 2 3) 1)
(remove-all `(1 2 3) 2)
(remove-all `(1 2 3) 3)
(remove-all `(1 1 3) 1)
(remove-all `(9 2 8 3 4 2 0 2))
(remove-all `() 3)

