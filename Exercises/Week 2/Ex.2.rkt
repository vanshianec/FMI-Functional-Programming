#lang racket

(define (mygcd a b)
  (if (= b 0)
      a
      (mygcd b (remainder a b))))

(mygcd 48 2)
(mygcd 17 17)
(mygcd 9 81)
(mygcd 24 16)