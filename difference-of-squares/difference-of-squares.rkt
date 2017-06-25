#lang racket
(require math/base)

(define (square n) (* n n))

(define (sum-of-squares n)
  (sum (map square (range 1 (add1 n)))))

(define (square-of-sums n)
  (square (sum (range 1 (add1 n)))))

(define (difference n)
  (abs (- (sum-of-squares n)
          (square-of-sums n))))

(provide sum-of-squares square-of-sums difference)
