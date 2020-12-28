#lang racket

(define (f x) (* 2 x))

(f 3)

(define (f-lambda)
  (lambda (x) (* 2 x)))

((f-lambda) 3)

