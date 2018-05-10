;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Tictactoe) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Importar Interfaz
(require "interface.rkt")

(define test '((1 2 3)
               (4 5 6)
               (7 8 9)))


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

;; Funcion que Detecta Ganador
;; Matriz de ejemlo (( x x x )( x x x )( x x x ))
;; (check_Winner  '(( x x x )( x x x )(x x x))   )
;; (traspuesta '((1 2 3)(A B C)(a b c)))

(define (check_Winner matrix)
  (cond
    ((not (equal? (check_largo matrix)#f)) (check_largo matrix))
    ((not (equal? (check_largo (traspuesta matrix))#f)) (check_largo (traspuesta matrix)))
    ((not (equal? (check_largo (getDiagonals matrix))#f)) (check_largo (getDiagonals matrix)))
    ((not (equal? (check_largo (getInvDiagonals matrix))#f)) (check_largo (getInvDiagonals matrix)))
    (else #f)
  ))


(define (check_largo matrix)
  (cond
    ((null? matrix) #f)
     ((equal?(check_largo_aux (car matrix)(car(car matrix)))#f )(check_largo (cdr matrix)) )
    (else (check_largo_aux (car matrix)(car(car matrix))))))

   
(define (check_largo_aux lista ele)
  (cond
    ((equal? ele '0) #f)
    ((null? lista) ele)
    ((equal? ele (car lista)) (check_largo_aux (cdr lista) ele))
    (else #f)))
                          
;; Genera la traspuesta de una matriz

(define (traspuesta matrix)
  (cond
    ((null? matrix)'())
    ((null? (car matrix))'())

    (else (append (list(traspuesta_aux matrix)) (traspuesta (corta_matrix matrix)))
     )))

(define (corta_matrix matrix)
  (cond
    ((null? matrix)'())
    ((null? (car matrix))'())
    (else (append (list(cdr(car matrix)))(corta_matrix (cdr matrix)) ))))
  

(define (traspuesta_aux matrix)
  (cond
    ((null? matrix)'())
    ((null? (car matrix))'())
   
    (else (append (list(car(car matrix))) (traspuesta_aux (cdr matrix) )))))

;Funcion que obtiene un valor en un indice i j de una matriz
(define (getAtIndex matrix i j)
  (list-ref (list-ref matrix i) j)
  )

(define (inverseMatrix matrix)
  (cond
    ((empty? matrix) '())
    (else (cons (reverse (car matrix)) (inverseMatrix (cdr matrix))))
    )
  )


(define (getInvDiagonals matrix)
  (getDiagonals (inverseMatrix matrix))
  )


(define (getDiagonals matrix)
  (cond
    ((< (length matrix) (length (car matrix))) (getDiagonalsIrregularH matrix 0 (length (car matrix)) (length matrix)))
    ((> (length matrix) (length (car matrix))) (getDiagonalsIrregularV matrix 0 (length (car matrix)) (length matrix)))
   ((equal? (length matrix) (length (car matrix))) (getDiagonalsRegular matrix (length matrix)))
   )
  )

(define (getDiagonalsRegular matrix len)
  (cond
    ((zero? len) '())
    (else (cons (getAtIndex matrix (- len 1) (- len 1)) (getDiagonalsRegular matrix (- len 1))))
    )
  )

(define (getDiagonalsIrregularH matrix index lenx leny)
  (cond
    ((< lenx (+ index leny)) '())
    (else (cons (getDiagonalsRegular matrix leny) (getDiagonalsIrregularH (corta_matrix matrix) (+ index 1) lenx leny)))
    )
  )

(define (getDiagonalsIrregularV matrix index lenx leny)
  (cond
    ((< leny (+ index lenx)) '())
    (else (cons (getDiagonalsRegular matrix lenx) (getDiagonalsIrregularV (cdr matrix) (+ index 1) lenx leny)))
    )
  )