#lang racket

(define (perfect-number? n)
  (define (helper sum d)
    (cond
      [(= d n) (= n sum)]
      [(= (remainder n d) 0) (helper (+ sum d) (+ d 1))]
      [else (helper sum (+ d 1))]))
  (helper 0 1))

(perfect-number? 6)
(perfect-number? 28)
(perfect-number? 496)
(perfect-number? 8128)

(perfect-number? 12)
(perfect-number? 1)
(perfect-number? 2)