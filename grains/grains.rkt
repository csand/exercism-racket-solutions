#lang racket
(require math/base)

(define (square n)
  (expt 2 (sub1 n)))

(define (total)
;  (sum (map square (range 1 65))))
  (sub1 (expt 2 64)))

(provide square total)
