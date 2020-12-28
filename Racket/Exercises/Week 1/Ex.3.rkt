#lang racket

(define (square x) (* x x))

(define (average a b)
  (/ (+ (square a) (square b)) 2))
  
(average 5 2)
(average 8 4)