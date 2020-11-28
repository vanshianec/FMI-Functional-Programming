#lang racket

;appends el to all elements of lst
(define (append-to-elements el lst)
  (map
     (lambda (x) (cons el x))
     lst))

(define (cartesian-product xs ys)
  
  (if (or (null? xs) (null? ys))
      ;if one of the lists is null return an empty list
      `()
      ;else combine 1 and 2 where:
      ;1 -> is a list of all elements of ys which have the first element of xs appended to them
      ;2 -> recursive call of the function with the other elements of xs except the first
      (append (append-to-elements (car xs) ys) (cartesian-product (cdr xs) ys))))

;(cartesian-product '(1 2) '(3 4))
;(cartesian-product '(1 2 3 4 5) '(6 7 8))