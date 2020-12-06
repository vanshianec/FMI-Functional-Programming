#lang racket

(define (remove-duplicates xs)
  (if (null? xs)
      xs
      (cons (car xs)
            (remove-duplicates
                (filter (lambda (x) (not (= x (car xs))))
                        (cdr xs))))))

(remove-duplicates `())
(remove-duplicates `(1))
(remove-duplicates `(1 2 3 4 1 1 1 2 3 33 4 4 4 1))
