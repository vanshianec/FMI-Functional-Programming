#lang racket

(define (get-length lst)
  (if (null? lst)
      0
      (+ 1 (get-length (cdr lst)))))

(get-length `(1 2 3))
(get-length (list 1 2 3))
(get-length `())
(get-length (cons 1 `()))
(get-length (cons 1 (cons 2 `(3))))
