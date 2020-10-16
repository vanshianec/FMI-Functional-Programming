#lang racket

(define (sum x n)
  (define (loop index sum)
    (if (< index 0)
        sum
        (loop (- index 1) (+ sum (expt x index)))))
  (loop n 0))

(sum 2 0)
(sum 2 1)
(sum 2 2)
(sum 2 3)

(sum 3 0)
(sum 3 1)
(sum 3 2)
(sum 3 3)