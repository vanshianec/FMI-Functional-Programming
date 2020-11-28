#lang racket

(define (kth-max-min xs)
  (lambda (k) (find-k ((negative (xs))) k)))

(define (negative xs)
  (filter
   (lambda (x) (< x 0))
   xs))

(define (find-k lst k)
  
  



    
    
  

  
