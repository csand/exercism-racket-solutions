#lang racket

(provide hamming-distance)

(define (hamming-distance aseq bseq)
  (if (equal? (string-length aseq) (string-length bseq))
      (for/sum ([a aseq] [b bseq])
        (if (equal? a b) 0 1))
      (error "String lengths do not match.")
      )
  )
