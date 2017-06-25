#lang racket

(provide add-gigasecond)

(require racket/date)

(define (add-gigasecond datetime)
  (seconds->date (+ (date->seconds datetime) 10e8)))
