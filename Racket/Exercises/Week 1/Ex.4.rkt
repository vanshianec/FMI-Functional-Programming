#lang racket

(define (fib n)
  (cond
    [(= n 0) 1]
    [(= n 1) 1]
    [else (+ (fib (- n 2)) (fib (- n 1)))]))

(fib 0)
(fib 1)
(fib 2)
(fib 3)
(fib 4)
(fib 5)
(fib 12)
; too slow with recursion -> (fib 50)

(define (fib-iter n)
  (loop 1 1 2 n))

(define (loop prev curr index length)
  (if (> index length)
      curr
      (loop curr (+ prev curr) (+ index 1) length)))

(fib-iter 0)
(fib-iter 1)
(fib-iter 2)
(fib-iter 3)
(fib-iter 4)
(fib-iter 5)
(fib-iter 12)
(fib-iter 50)