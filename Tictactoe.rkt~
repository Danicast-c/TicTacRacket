;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Tictactoe) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Funcion que Detecta Ganador
;; Matriz de ejemlo (( x x x )( x x x )( x x x ))
;; (check_Winner  '(( x x x )( x x x )(x x x))   )

(define (check_Winner matrix)
  (cond
    ( (check_largo matrix ) #t)


    (else #f)))

(define (check_largo matrix)
  (cond
    ((null? matrix) #f)
    ( (check_largo_aux (car matrix)(car(car matrix))) #t)
    (else (check_largo (cdr matrix)))))

   
(define (check_largo_aux lista ele)
  (cond
    ((equal? ele 'n) #f)
    ((null? lista) #t)
    ((equal? ele (car lista)) (check_largo_aux (cdr lista) ele))
    (else #f)))
                          
                   