#lang racket

(define (reverse num)
  (loop-reverse 0 (- (get-length num) 1) num))

(define (get-length num)
  (loop-length 1 num))


(define (loop-length count num)
  (if (<= num 9)
      count
      (loop-length (+ count 1) (quotient num 10))))

(define (loop-reverse count index num)
  (if (< index 0)
      count
     (loop-reverse (+ count (* (remainder num 10) (expt 10 index))) (- index 1) (quotient num 10))))

(reverse 5833)
(reverse 999)
(reverse 1212)
(reverse 1221)
(reverse 123456)