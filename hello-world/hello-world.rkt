#lang racket

(define (hello [name "World"])
  (string-append "Hello, " name "!"))

(provide hello)
