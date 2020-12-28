#lang racket

(define (my-identity x) x)

(my-identity 4)

(define (my-compose f g)
  (lambda (x) (f (g x))))

((my-compose (lambda (x) (+ 7 x)) (lambda (x) (- x 2))) 5)

(define (my-negate p?)
  (lambda (x) (not (p? x))))

((my-negate (lambda (x) (if (< x 0) #t #f))) 5)

(define (f a b c)
  (+ a b c))

;curry is used to fix the first argument of function 'f'
(define f-1
  (curry f 1))

(define (my-curry f x)
  (lambda (y z) (f x y z)))

((my-curry f 1) 2 3)




  

