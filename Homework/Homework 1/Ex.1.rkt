#lang racket
(define (automorphic? n)
  (define (ends-with? num suffix)
    (cond
      [(= suffix 0) #t]
      [(not (= (remainder num 10) (remainder suffix 10))) #f]
      [else (ends-with? (quotient num 10) (quotient suffix 10))]))
  (ends-with? (* n n) n))

(automorphic? 5) ; -> #t
(automorphic? 25) ; -> #t
(automorphic? 36) ; -> #f
(automorphic? 890625) ; -> #t