#lang racket


(define (dig-pow n p)
  (define (helper num p sum)
    (if (= num 0)
        (find-k n sum)
        (helper (quotient num 10) (- p 1) (+ sum (expt (remainder num 10) p)))))
  (helper n (last-p n p) 0))

(define (last-p num p)
  (- (+ (get-length num) p) 1))

(define (get-length num)
  (if (= num 0)
      0
      (+ 1 (get-length (quotient num 10)))))

(define (find-k num sum)
  (define (helper k)
    (cond
      [(or (> k num) (< sum num)) -1]
      [(= (* k num) sum) k]
      [else (helper (+ k 1))]))
  (helper 1))

(dig-pow 89 1) ;
(dig-pow 92 1) ; 
(dig-pow 695 2) ; 
(dig-pow 46288 3) ;

