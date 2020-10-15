#lang racket

(define (sum-odds a b)
  (loop a b 0))

(define (loop index length sum)
  (if (> index length)
      sum
      (loop (+ index 1) length (if (= (remainder index 2) 0) sum (+ sum index)))))

(sum-odds 1 5)
(sum-odds 1 1)
(sum-odds 2 2)
(sum-odds 2 3)
(sum-odds 3 4)
(sum-odds 1 9)
