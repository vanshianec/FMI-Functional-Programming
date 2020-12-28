#lang racket

(define (count-palindromes a b)
  (loop a b 0))

(define (loop index length count)
  (if (> index length)
      count
      (loop (+ index 1) length (if (is-palindrome? index) (+ count 1) count))))

(define (is-palindrome? num)
  (cond
    [(= num (reverse num)) #t]
    [else #f]))

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

(count-palindromes 1221 1229)
(count-palindromes 1 100)
(count-palindromes 1 9)
(count-palindromes 133353331 133353331)
  