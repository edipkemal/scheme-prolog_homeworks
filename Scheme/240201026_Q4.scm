#lang scheme

(define (cube_list alist)
  (if
    (not (zero? (length alist)));statement
    (append (list (* (car alist) (car alist) (car alist))) (cube_list (cdr alist))) ;true condition
    (list);else 
    ))

(cube_list (list 2 5 7))
