#lang racket
(define (automorphic? n) 
  (define (ends-with? num suffix)
    (cond
      [(= suffix 0) #t] ;if the suffix is 0, then num ends with the digits of suffix
      [(not (= (remainder num 10) (remainder suffix 10))) #f] ;if the last digits of num and suffix are not equal return false 
      [else (ends-with? (quotient num 10) (quotient suffix 10))])) ;else call the function with the next digits of both numbers
  (ends-with? (* n n) n))
;NOTE: ends-with? works when num >= suffix and suffix != 0 but since we are receiving natural numbers only, it works fine 

(automorphic? 5) ; -> #t
(automorphic? 25) ; -> #t
(automorphic? 36) ; -> #f
(automorphic? 890625) ; -> #t