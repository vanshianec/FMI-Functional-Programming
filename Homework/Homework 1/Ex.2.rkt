#lang racket

(define (calculate k) (+ (* 3 (* k k)) (* 3 k) 1))

(define (is-prime? n)
  (define (helper index length)
     (cond
       [(> index length) #t]
       [(= (remainder n index) 0) #f]
       [else (helper (+ index 1) length)]))
  (cond
    [(< n 2) #f]
    [else (helper 2 (sqrt n))]))
     
(define (nth-cuban n)
  (define (helper k goal result)
    (cond
      [(= goal 0) (calculate (- k 1))]
      [(is-prime? result) (helper (+ k 1) (- goal 1) (calculate (+ k 1)))]
      [else (helper (+ k 1) goal (calculate (+ k 1)))]))
  (helper 0 n 0))

(nth-cuban 1) ; -> 7 (23 - 13)
(nth-cuban 4) ; -> 61 (53 - 43)
(nth-cuban 50) ; -> 55897 (1373 - 1363)
(nth-cuban 100) ; -> 283669 (3083 - 3073)
    