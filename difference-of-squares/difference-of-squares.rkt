#lang racket
(require math/base)

(define (sum-of-squares n)
  (sum (build-list (add1 n) sqr)))

(define (square-of-sums n)
  (sqr (sum (range 1 (add1 n)))))

(define (difference n)
  (abs (- (sum-of-squares n)
          (square-of-sums n))))

(provide sum-of-squares square-of-sums difference)
