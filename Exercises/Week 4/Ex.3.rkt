#lang racket

(define (difference F a b)
  (- (F b) (F a)))

(difference (lambda (x) (* 2 x)) 3 5)