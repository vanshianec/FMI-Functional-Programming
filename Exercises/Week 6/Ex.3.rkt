#lang racket

(define (insert-at lst position element)
  (if (or (= position 0) (null? lst))
      (cons element lst)
      (cons (car lst) (insert-at (cdr lst) (- position 1) element))))

(insert-at `(1 2 3) 1 5)
(insert-at `(1 2 3) 0 5)
(insert-at `() 0 5)
  
  