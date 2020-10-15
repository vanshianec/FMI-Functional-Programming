#lang racket

(define (mymaxdivisor x)
  (loop x 1 1))

(define (loop x index result)
  (if (= index x)
      result
      (loop x (+ index 1) (if (= (remainder x index) 0) index result))))

(mymaxdivisor 77)
(mymaxdivisor 113)
(mymaxdivisor 2)
(mymaxdivisor 48)