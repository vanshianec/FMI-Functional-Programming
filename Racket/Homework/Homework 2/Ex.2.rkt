#lang racket

(define (factorize n)
  (define (helper num divisor lst)
    (cond
      ;if the num is less than the divisor we have nothing left to divide by and return the list of divisors
      [(< num divisor) lst]
      ;else check if the divisor is prime and the number is divisible by the divisor
      ;and if true append the divisor to the list of divisors and call the function with the divided number
      [(and (is-prime? divisor) (= (remainder num divisor) 0)) (helper (quotient num divisor) divisor (append lst (list divisor)))]
      ;else if the divisor is not prime or the number is not divisible by the divisor try with the next divisor
      [else (helper num (+ 1 divisor) lst)]))
  (helper n 2 `()))

(define (is-prime? n)
  (define (loop count length)
     (cond
       [(> count length) #t] ; if the count passes length, the number is prime
       [(= (remainder n count) 0) #f] ; if the number is divisible by count, then it is not prime
       [else (loop (+ count 1) length)])) ; else check if the number is divisible by the next count number
  (cond
    [(< n 2) #f]
    [else (loop 2 (sqrt n))])) ; loop from 2 to sqrt(n)

;(factorize 6) ; -> '(2 3)
;(factorize 13) ; -> '(13)
;(factorize 123) ; -> '(3 41)
;(factorize 152) ; -> '(2 2 2 19)