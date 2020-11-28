#lang racket

(define (triangular? mat)
  (define (helper count n)
    (cond
      [(> count n) #t]
      [has-not-required-zeroes (take (car (drop mat count)) count) #f]
      [else (helper (+ 1 count) n)]))
  (helper 1 (- (length mat) 1)))

(define (has-not-required-zeroes row)
  (cond
    [(null? row) #t]
    [(not (= (car row) 0)) #f]
    [else (has-not-required-zeroes (cdr row))]))

(triangular? '((1 2 3)
 (0 5 6)
 (0 0 9))) ; -> #t
(triangular? '((0 2 3)
 (0 0 6)
 (1 0 0))) ; -> #f
(triangular? '((1 2 3)
 (1 5 6)
 (0 0 9))) ; -> #f
(triangular? '((1 2 3 4)
 (0 5 6 7)
 (0 0 8 9)
 (0 0 0 9))) ; -> #t

    
