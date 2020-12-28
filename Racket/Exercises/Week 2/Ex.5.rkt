#lang racket

(define (prime? n)
  (helper 2 (sqrt n) n))

(define (helper index length num)
  (cond
    [(< num 2) #f]
    [(> index length) #t]
    [(= (remainder num index) 0) #f]
    [else (helper (+ index 1) length num)]))

(prime? 1)
(prime? 2)
(prime? 3)
(prime? 4)
(prime? 113)
(prime? 8)
(prime? 99)
(prime? 77)
(prime? 11)