#lang racket
(require math/base
         math/number-theory)

(define (perfect? n)
  (equal? n (- (sum (divisors n)) n)))

(define (perfect-numbers end)
  (filter perfect? (range 1 (add1 end))))

(provide perfect-numbers)
