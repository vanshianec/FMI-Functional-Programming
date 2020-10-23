#lang racket

(define (is-prime? n)
  (define (loop count length)
     (cond
       [(> count length) #t] ; if the count passes length, the number is prime
       [(= (remainder n count) 0) #f] ; if the number is divisible by count, then it is not prime
       [else (loop (+ count 1) length)])) ; else check if the number is divisible by the next count number
  (cond
    [(< n 2) #f]
    [else (loop 2 (sqrt n))])) ; loop from 2 to sqrt(n)

; we can use that num = (k+1)^3 - k^3 = 3*k^2 + 3*k + 1, where k >= 1
; example : 3^3 - 2^3 = 3*2^2 + 3*2 + 1 = 19
(define (calculate k) (+ (* 3 (* k k)) (* 3 k) 1))
 
(define (nth-cuban n)
  (define (helper k goal result)
    ; k -> current number to be calculated
    ; goal -> keeps track of the count of prime numbers
    ; result -> keeps the last calculated number by k 
    (cond
      [(= goal 0) (calculate (- k 1))] ; if the goal is zero, then we reached the n-th cuban number
      [(is-prime? result) (helper (+ k 1) (- goal 1) (calculate (+ k 1)))] ; if the last calculated number is prime, decrease goal and calculate the next number
      [else (helper (+ k 1) goal (calculate (+ k 1)))])) ; else just calculate the next number
  (helper 0 n 0))

(nth-cuban 1) ; -> 7 (23 - 13)
(nth-cuban 4) ; -> 61 (53 - 43)
(nth-cuban 50) ; -> 55897 (1373 - 1363)
(nth-cuban 100) ; -> 283669 (3083 - 3073)
    
