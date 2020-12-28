#lang racket

(define (inside? x a b)
  (cond
    [(< x a) #f]
    [(> x b) #f]
    [else #t]
  ))

(inside? 3 2 5)
(inside? 1 2 5)
(inside? 6 2 5)
(inside? 2 2 5)
(inside? 5 2 5)