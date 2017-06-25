#lang racket
(require math/number-theory)

(define (leap-year? year)
  (cond [(divides? 400 year) #t]
        [(divides? 100 year) #f]
        [(divides? 4 year) #t]
        [else #f]))

(provide leap-year?)
