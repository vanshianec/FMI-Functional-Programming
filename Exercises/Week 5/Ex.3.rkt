#lang racket

(define (repeated f n)
  (define (helper f n x)
    (if (= n 0)
         x
        (helper f (- n 1) (f x))))
  (lambda (x) (helper f n x)))

(define (g x)
  (+ 2 x))
  
((repeated g 3) 7)