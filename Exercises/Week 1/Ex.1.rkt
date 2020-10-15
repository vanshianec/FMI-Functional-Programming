#lang racket

(define (mymin x y)
  (if (< x y) x y)
  )

(mymin 2 3)
(mymin 3 2)
(mymin 2 2)

