#lang racket

(define (derrive f eps)
   (lambda (x) (/ (- (f (+ x eps)) (f x)) eps)))

(define (g x)
  (* 2 x x))

(define (derrive-second f eps)
  (derrive (derrive f eps) eps))

((derrive g 0.0001) 2)
((derrive-second g 0.0001) 2)
