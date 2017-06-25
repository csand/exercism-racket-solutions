#lang racket
(require math/base
         math/number-theory)

(define (is-perfect? n)
  (equal? n (- (sum (divisors n)) n)))

(define (perfect-numbers end)
  (filter is-perfect? (stream->list (in-range 1 (add1 end)) )))

(provide perfect-numbers)
