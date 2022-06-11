#lang scheme

(define (sum_even n)
  (cond
    ((< n 2) 0)
    ((even? n) (+ n (sum_even (- n 2))))
    (else (sum_even (- n 1)))
    ))

(sum_even 8)

