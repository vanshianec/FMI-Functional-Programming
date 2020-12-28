#lang racket

(define (shuffle xs)
  (if (null? xs)
      xs
      (helper (take xs (quotient (length xs) 2)) (drop xs (quotient (length xs) 2)))))

(define (helper xs ys)
  (if (null? xs)
      `()
      (append (list (car xs) (car ys)) (helper (cdr xs) (cdr ys)))))


      