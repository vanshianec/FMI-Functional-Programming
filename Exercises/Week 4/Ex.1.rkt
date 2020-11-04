#lang racket

(define (suff? a b)
  (cond
    [(< a 10) (= a (remainder b 10))]
    [(not (= (remainder a 10) (remainder b 10))) #f]
    [else (suff? (quotient a 10) (quotient b 10))]))

(define (substr? a b)
  (cond
    [(> a b) #f]
    [(suff? a b) #t]
    [else (substr? a (quotient  b 10))]))

(substr? 50 3450111)
(substr? 0 507)
(substr? 13 13)
(substr? 999 99)
