#lang racket

(define (count-occurences subxs xs)
  (define (helper xs subxs-len)
    (cond
      [(> subxs-len (length xs)) 0]
      [(equal? subxs (take xs subxs-len))
         (+ 1 (helper (cdr xs) subxs-len))]
      [else (helper (cdr xs) subxs-len)]))
  (helper xs (length subxs)))

(count-occurences `(1) `(1 1 1))
(count-occurences `(1 2 3) `(4 1 2 3))
(count-occurences `(1 2 3) `(1 4 2 3))
(count-occurences `(1 2 3) `(1 2))
