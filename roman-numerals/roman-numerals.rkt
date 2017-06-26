#lang racket

(provide to-roman)

; Nothing to do with threads, macros for procedure application
(require threading)

(define (to-roman n)
  (~> n
      number->list
      ; Turn each digit into its roman characters for that digit's position
      ; Position is determined by the current length of the accumulator list
      (foldr (λ (x r) (cons (numeralize x (length r)) r)) null _)
      (string-join "")
      ))

(define number->list (compose string->list number->string))

(define (numeralize n pos)
  (let ([chars (chars-for-position pos)])
    (list->string (map (curry hash-ref chars) (roman-repr n)))))

(define/match (chars-for-position pos)
  [(0) (hash 'one #\I 'five #\V 'ten #\X)]
  [(1) (hash 'one #\X 'five #\L 'ten #\C)]
  [(2) (hash 'one #\C 'five #\D 'ten #\M)]
  [(3) (hash 'one #\M)])

(define/match (roman-repr n)
  [(#\0) null]
  [(#\1) '(one)]
  [(#\2) '(one one)]
  [(#\3) '(one one one)]
  [(#\4) '(one five)]
  [(#\5) '(five)]
  [(#\6) '(five one)]
  [(#\7) '(five one one)]
  [(#\8) '(five one one one)]
  [(#\9) '(one ten)]
  )
