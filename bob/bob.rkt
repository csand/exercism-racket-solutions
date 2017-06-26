#lang racket

(provide response-for)

(define (uppercase? str)
  (and (regexp-match? #rx"[A-Z]" str)
       (not (regexp-match #rx"[a-z]" str))))

(define (question? str)
  (equal? #\? (string-ref str (sub1 (string-length str)))))

(define (string-empty? str)
  (equal? "" (string-trim str)))

(define (response-for str)
  (cond
    [(string-empty? str) "Fine. Be that way!"]
    [(uppercase? str) "Whoa, chill out!"]
    [(question? str) "Sure."]
    [else "Whatever."]))
