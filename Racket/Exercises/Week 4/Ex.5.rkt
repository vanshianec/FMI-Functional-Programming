#lang racket

(define (derive f eps)
  (λ (x) (/ (- (f (+ x eps)) (f x)) eps)))
(define (g x)
  (* 2 x x))
(define g-p
  (derive g 0.001))
(g-p 1)
  