#lang racket

(define (concat lst1 lst2)
  (if (null? lst1)
      lst2
      (cons (car lst1) (concat (cdr lst1) lst2))))

(concat `() `())
(concat `() `(1))
(concat `(1, 3) `())
(concat `(1, 2) `(3, 4))
      