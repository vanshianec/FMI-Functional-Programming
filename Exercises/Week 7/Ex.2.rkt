#lang racket

(define (sublistBetween start end xs)
  (take (drop xs start) (+ 1 (- end start))))

(sublistBetween 5 9 (range 10))