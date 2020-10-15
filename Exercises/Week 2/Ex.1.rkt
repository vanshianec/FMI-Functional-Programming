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
(fib-iter 6)
(fib-iter 24)
(fib-iter 45)