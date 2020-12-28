#lang racket

(define (count-divisors n)
  (define (helper count d)
    (cond
      [(> d n) count]
      [(= (remainder n d) 0) (helper (+ count 1) (+ d 1))]
      [else (helper count (+ d 1))]))  
  (helper 0 1))

(count-divisors 24)
(count-divisors 6)
(count-divisors 1)
(count-divisors 113)
