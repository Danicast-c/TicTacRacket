#lang racket/gui

(define test '((1 1 -1)
               (0 -1 1)
               (-1 -1 1)))


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
            (0 0 1 0 0)
            (1 0 1 0 0))
  )


;; Funcion que Detecta Ganador
;; Matriz de ejemlo (( x x x )( x x x )( x x x ))
;; (check_Winner  '(( x x x )( x x x )(x x x))   )
;; (traspuesta '((1 2 3)(A B C)(a b c)))

(provide check_Winner)
(provide getInvDiagonals)
(provide getDiagonals)
(provide traspuesta)
(provide check_largo)
(provide nextCpuMove)


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
   ((equal? (length matrix) (length (car matrix))) (list (getDiagonalsRegular matrix (length matrix))))
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

(define (getEmptySpaces matrix)
  (cond
    ((empty? matrix) '())
    (else (getEmptySpacesAux matrix 0 0 (length (car matrix)) (length matrix) '()))
  )
)

(define (getEmptySpacesAux matrix i j lenx leny results)
  (cond
    ((< leny (+ i 1)) '())
    ((< lenx (+ j 1)) (getEmptySpacesAux matrix (+ i 1) 0 lenx leny results))
    ((equal? (getAtIndex matrix i j) 0) (cons (cons i j) (getEmptySpacesAux matrix i (+ j 1) lenx leny results)))
    (else (getEmptySpacesAux matrix i (+ j 1) lenx leny results))
  )
)

(define (horizontalScore matrix i)
  (horizontalScoreAux matrix i 0 (length (car matrix)))
)

(define (horizontalScoreAux matrix i j lenx)
  (cond
    ((< lenx (+ j 1)) 0)
    (else (+ (getAtIndex matrix i j) (horizontalScoreAux matrix i (+ 1 j) lenx)))
  )
)

(define (verticalScore matrix j)
  (horizontalScoreAux (traspuesta matrix) j 0 (length matrix))
)

(define (checkViability matrix i j)
  (cond
    ((equal? (horizontalScore matrix i) (- (length (car matrix)) 1)) -9999)
    ((equal? (verticalScore matrix j) (- (length matrix) 1)) -9999)
    (else (+ (horizontalScore matrix i) (verticalScore matrix j) (totalDiagonalScore matrix i j)))
  )
)


(define (scoreViability matrix)
  (qs (scoreViabilityAux matrix (getEmptySpaces matrix)))
)

(define (scoreViabilityAux matrix spaces)
  (cond
    ((empty? spaces) '())
    (else (cons (list (checkViability matrix (caar spaces) (cdar spaces)) (caar spaces) (cdar spaces)) (scoreViabilityAux matrix (cdr spaces))))
  )
)



(define (qs lista)
  (cond
    ((null? lista) '())
    (else (append (qs (quicksort_menor (cdr lista) (caar lista)))  (list (car lista)) (qs (quicksort_mayor (cdr lista) (caar lista)))))
    )
  )
(define (quicksort_mayor lista pivote)
  (cond
    ((null? lista) '())
    ((< pivote (caar lista)) (cons (car lista) (quicksort_mayor (cdr lista) pivote)))
    (else (quicksort_mayor (cdr lista) pivote))
    )
  )

(define (quicksort_menor lista pivote)
  (cond
    ((null? lista) '())
    ((>= pivote (caar lista)) (cons (car lista) (quicksort_menor (cdr lista) pivote)))
    (else (quicksort_menor (cdr lista) pivote))
    )
)

(define (nextCpuMove matrix)
  (cdar (scoreViability matrix))
)

(define (getDiagonalsIndex matrix)
  (cond
    ((< (length matrix) (length (car matrix))) (getDiagonalsIndexIrregularH matrix 0 (length (car matrix)) (length matrix)))
    ((> (length matrix) (length (car matrix))) (getDiagonalsIndexIrregularV matrix 0 (length (car matrix)) (length matrix)))
   ((equal? (length matrix) (length (car matrix))) (list (getDiagonalsIndexRegular matrix (length matrix) 0 0)))
   )
  )

(define (getDiagonalsIndexRegular matrix len xpos ypos)
  (cond
    ((zero? len) '())
    (else (cons (cons (+ (- len 1) ypos) (+ (- len 1) xpos)) (getDiagonalsIndexRegular matrix (- len 1) xpos ypos)))
    )
  )

(define (getDiagonalsIndexIrregularH matrix index lenx leny)
  (cond
    ((< lenx (+ index leny)) '())
    (else (cons (getDiagonalsIndexRegular matrix leny index 0) (getDiagonalsIndexIrregularH (corta_matrix matrix) (+ index 1) lenx leny)))
  )
)

(define (getDiagonalsIndexIrregularV matrix index lenx leny)
  (cond
    ((< leny (+ index lenx)) '())
    (else (cons (getDiagonalsIndexRegular matrix lenx 0 index) (getDiagonalsIndexIrregularV (cdr matrix) (+ index 1) lenx leny)))
    )
 )

(define (diagonalScoreInv matrix)
  (diagonalScoreAux matrix (getInvDiagonals matrix) (inverseDiagonalsIndexes matrix (getDiagonalsIndex matrix)))
)

(define (diagonalScore matrix)
  (diagonalScoreAux matrix (getDiagonals matrix) (getDiagonalsIndex matrix))
)

(define (diagonalScoreAux matrix diagonals indexes)
  (cond
    ((empty? diagonals) '())
    (else (append  (diagonalScoreSubAux matrix (sumaLista (car diagonals)) (car indexes)) (diagonalScoreAux matrix (cdr diagonals) (cdr indexes)) ))
  )
)

(define (sumaLista lista)
  (cond
    ((empty? lista) 0)
    (else (+ (car lista) (sumaLista (cdr lista))))
  )
)

(define (diagonalScoreSubAux matrix score indexes)
  (cond
    ((empty? indexes) '())
    ((equal? score (- (min (length matrix) (length (car matrix))) 1)) (cons (cons -9999 (car indexes)) (diagonalScoreSubAux matrix score (cdr indexes)))) 
    (else (cons (cons score (car indexes)) (diagonalScoreSubAux matrix score (cdr indexes))))
  )
)

(define (totalDiagonalScore matrix i j)
  (+ (totalDiagonalScoreAux (diagonalScore matrix) i j) (totalDiagonalScoreAux (diagonalScoreInv matrix) i j))
)

(define (totalDiagonalScoreAux scores i j)
  (cond
    ((empty? scores) 0)
    ((and
      (equal? (cadar scores) i) (equal? (cddar scores) j))
      (caar scores)
    )
    (else (totalDiagonalScoreAux (cdr scores) i j))
  )
)



(define (inverseDiagonalsIndexes matrix indexes)
  (cond
    ((empty? indexes) '())
    (else (cons (inverseDiagonalsIndexAux matrix (car indexes)) (inverseDiagonalsIndexes matrix (cdr indexes))))
  )
)

(define (inverseDiagonalsIndexAux matrix indexes)
   (cond
    ((empty? indexes) '())
    (else (cons (cons (caar indexes) (- (length (car matrix)) (cdar indexes) 1)) (inverseDiagonalsIndexAux matrix (cdr indexes))))
  )
)