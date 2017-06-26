#lang racket

(provide score)

(define value1  (string->list "AEIOULNRST"))
(define value2  (string->list "DG"))
(define value3  (string->list "BCMP"))
(define value4  (string->list "FHVWY"))
(define value5  '(#\K))
(define value8  (string->list "JX"))
(define value10 (string->list "QZ"))

(define (contains-char? chr l)
  (ormap (curry char-ci=? chr) l))

(define (score word)
  (for/sum ([chr word])
    (cond
      [(contains-char? chr value1) 1]
      [(contains-char? chr value2) 2]
      [(contains-char? chr value3) 3]
      [(contains-char? chr value4) 4]
      [(contains-char? chr value5) 5]
      [(contains-char? chr value8) 8]
      [(contains-char? chr value10) 10]
      [else 0]
      )
    )
  )
