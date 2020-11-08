#lang racket

(define (reverse lst)
  (define (helper lst rev-lst)
    (if (null? lst)
        rev-lst
        (helper (cdr lst) (cons (car lst) rev-lst))))
  (helper lst `()))

(reverse `())
(reverse `(1))
(reverse `(1, 2, 3))