#lang racket/gui

(define frame (new frame%
                   [label "Example"]
                   [stretchable-width #t]
                   [stretchable-height #t]))
 
; Add a horizontal panel to the frame, with centering for buttons
(define panel1 (new horizontal-panel% [parent frame]
                                     [alignment '(center center)]))
 
; Add Cancel and Ok buttons to the horizontal panel
(define button11 (new button% [parent panel1]
     [label ""]
     [min-width 100]
     [min-height 100]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button11 set-label "X")
                         (send button11 enable #f))]))
  
(define button12 (new button% [parent panel1]
     [label ""]
     [min-width 100]
     [min-height 100]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button12 set-label "O")
                         (send button12 enable #f))]))

(define button13 (new button% [parent panel1]
     [label ""]
     [min-width 100]
     [min-height 100]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button13 set-label "")
                         (send button13 enable #f))]))



; Add a horizontal panel to the frame, with centering for buttons
(define panel2 (new horizontal-panel% [parent frame]
                                     [alignment '(center center)]))
 
; Add Cancel and Ok buttons to the horizontal panel
(define button21 (new button% [parent panel2]
     [label ""]
     [min-width 100]
     [min-height 100]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button21 set-label "O")
                         (send button21 enable #f))]))
  
(define button22 (new button% [parent panel2]
     [label ""]
     [min-width 100]
     [min-height 100]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button22 set-label "X")
                         (send button22 enable #f))]))

(define button23 (new button% [parent panel2]
     [label ""]
     [min-width 100]
     [min-height 100]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button23 set-label "")
                         (send button23 enable #f))]))



; Add a horizontal panel to the frame, with centering for buttons
(define panel3 (new horizontal-panel% [parent frame]
                                     [alignment '(center center)]))
 
; Add Cancel and Ok buttons to the horizontal panel
(define button31 (new button% [parent panel3]
     [label ""]
     [min-width 100]
     [min-height 100]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button31 set-label "X")
                         (send button31 enable #f))]))
  
(define button32 (new button% [parent panel3]
     [label ""]
     [min-width 100]
     [min-height 100]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button32 set-label "O")
                         (send button32 enable #f))]))

(define button33 (new button% [parent panel3]
     [label ""]
     [min-width 100]
     [min-height 100]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button33 set-label "X")
                         (send button33 enable #f))]))

; Show the frame
(send frame show #t)

; To delete a children
; (send panel delete-child button12)
; (list 'button00 'button01 'button02 'button10 'button11 'button12 'button20 'button21 'button22)
; formula suponiendo que los botones estan ordenados como "button[x][y]": x*n + (y+1), siendo n la cantidad de filas
