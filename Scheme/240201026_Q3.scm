#lang scheme

(define (square_list alist)
  (if
    (not (zero? (length alist)));statement
    (append (list (* (car alist) (car alist))) (square_list (cdr alist))) ;true condition
    (list); else 
    ))

(square_list (list 2 5 7))
