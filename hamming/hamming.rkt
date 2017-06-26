#lang racket

(provide hamming-distance)

(define (hamming-distance aseq bseq)
  (unless (= (string-length aseq) (string-length bseq))
    (error "String lengths do not match."))
  (for/sum ([a aseq] [b bseq])
    (if (char=? a b) 0 1))
  )
