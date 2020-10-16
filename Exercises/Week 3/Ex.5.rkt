#lang racket

(define (inc-digits? n)
  (cond
    [(<= n 9) #t]
    [(<= (remainder n 10) (remainder (quotient n 10) 10)) #f]
    [else (inc-digits? (quotient n 10))]))

(inc-digits? 123)
(inc-digits? 321)
(inc-digits? 111)
(inc-digits? 122)
(inc-digits? 1)
(inc-digits? 9)
(inc-digits? 12)
(inc-digits? 1579)




    