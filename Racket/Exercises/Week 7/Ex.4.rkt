#lang racket

(define (ordered? xs pred)
  (if (null? (cdr xs))
    #t
    (if (pred (car xs) (car (cdr xs)))
        (ordered? (cdr xs) pred)
         #f)))

(ordered? `(1) (lambda (a b) (< a b)))
(ordered? `(1 2 3 4 5) (lambda (a b) (< a b)))
(ordered? `(1 2 3 4 5) (lambda (a b) (> a b)))