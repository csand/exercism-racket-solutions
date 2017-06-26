#lang racket

(provide to-roman)

(define (to-roman n)
  (let* ([digits (string->list (number->string n))]
         [numeralized (foldr (λ (x r)
                               (let ([position (hash-ref positions (length r))]
                                     [numeral (hash-ref numerals x)])
                                 (cons (map (curry hash-ref position) numeral) r)))
                             null
                             digits)])
    (string-join (map list->string numeralized) "")))

(define positions (hash
                   0 (hash 'unit #\I 'five #\V 'ten #\X)
                   1 (hash 'unit #\X 'five #\L 'ten #\C)
                   2 (hash 'unit #\C 'five #\D 'ten #\M)
                   3 (hash 'unit #\M)
                   ))

(define numerals (hash
                  #\0 null
                  #\1 '(unit)
                  #\2 '(unit unit)
                  #\3 '(unit unit unit)
                  #\4 '(unit five)
                  #\5 '(five)
                  #\6 '(five unit)
                  #\7 '(five unit unit)
                  #\8 '(five unit unit unit)
                  #\9 '(unit ten)
                  ))
