#lang racket

(define (count-palindromes a b)
  (cond
    [(> a b) 0]
    [(is-palindrome? a) (+ 1 (count-palindromes (+ 1 a) b))]
    [else (count-palindromes (+ 1 a) b)]))

(define (is-palindrome? num)
  (= (reverse num) num))

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

(count-palindromes 1221 2222)
(count-palindromes 1221 1221)
(count-palindromes 1 9)