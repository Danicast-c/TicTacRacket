;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Tictactoe) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;;Importar Interfaz
(require "interface.rkt")
;; Funcion que Detecta Ganador
;; Matriz de ejemlo (( x x x )( x x x )( x x x ))
;; (check_Winner  '(( x x x )( x x x )(x x x))   )
;; (traspuesta '((1 2 3)(A B C)(a b c)))

(define (check_Winner matrix)
  (cond
    ((not (equal? (check_largo matrix)#f)) (check_largo matrix))
    ((not (equal? (check_largo (traspuesta matrix))#f)) (check_largo (traspuesta matrix)))
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

;; Genera las diagonales de la matriz