#lang racket

(define (contains? lst element)
  (cond
    [(null? lst) #f]
    [(= element (car lst)) #t]
    [else (contains? (cdr lst) element)]))

(contains? `(1 2 3) 7)
(contains? `(1 2 3) 2)
(contains? `(1 2 3) 1)
(contains? `(1 2 3) 3)
(contains? `() 3);
      