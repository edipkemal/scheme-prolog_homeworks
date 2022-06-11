#lang scheme

(define (sum_list alist)
  (if
   (= (length alist) 0) ;statement
      0  ;if true
      (+ (car alist) (sum_list (cdr alist))) ;else
    ))

(sum_list (list 1 2 3 4 5))