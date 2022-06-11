#lang scheme

(define (power_list alist func)
  (if
    (not (zero? (length alist)));statement
    (append (list (func (car alist))) (power_list (cdr alist) func)) ;true condition
    (list);else
    ))

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(power_list (list 2 5 7) square)
(power_list (list 2 5 7) cube)


