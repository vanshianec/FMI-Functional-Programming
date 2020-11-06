#lang racket

(define (derrive-n f n eps)
  (if (= n 0)
      f
      (derrive-n (derrive f eps) (- n 1) eps)))

(define (derrive f eps)
  (lambda (x) (/ (- (f (+ x eps)) (f x)) eps)))

(define (g x)
  (* 2 x x x))

((derrive-n g 1 0.0001) 5)
((derrive-n g 2 0.0001) 5)
((derrive-n g 3 0.0001) 5)


