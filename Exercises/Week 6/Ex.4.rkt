#lang racket

(define (find-min lst)
  (if (null? (cdr lst))
      (car lst)
      (min (car lst) (find-min (cdr lst)))))

(find-min `(3))
(find-min `(2 1))
(find-min `(1 2))
(find-min `(3 7 1 9 8 2))