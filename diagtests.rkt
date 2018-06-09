#lang racket/gui

(define test '((1 2 3)
               (4 5 6)
               (7 8 9)))

(define test2 '((1 0) (0 -1)))

(define testh '((1 2 3 4 5)
               (6 7 8 9 10)
               (11 12 13 14 15)))

(define testv '((1 2 3)
               (4 5 6)
               (7 8 9)
               (10 11 12)
               (13 14 15)))


(define testxy '((1 2 3 4 5)
                   (6 7 8 9 10)
                   (11 12 13 14 15)
                   (16 17 18 19 20)))


(define nt '((-1 1 0)
            (0 1 0)
            (1 0 0))
  )

(define nt2 '((0 1 0 -1 1)
            (1 1 0 -1 0)
            (0 0 0 0 0)
            (1 0 1 -1 0))
  )


(define (getAtIndex matrix i j)
  (list-ref (list-ref matrix i) j)
  )


(define (corta_matrix matrix)
  (cond
    ((null? matrix)'())
    ((null? (car matrix))'())
    (else (append (list(cdr(car matrix)))(corta_matrix (cdr matrix)) ))))
  




(getDiagonalsIndex testh)