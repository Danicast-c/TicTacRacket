#lang racket/gui

(define frame (new frame%
                   [label "Example"]
                   [stretchable-width #t]
                   [stretchable-height #t]))
 
; Add a horizontal panel to the frame, with centering for buttons
(define panel0 (new horizontal-panel% [parent frame]
                                     [alignment '(center center)]))

 
; Add Buttons that play as the grid of the game
(define button00 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button00 set-label "X")
                         (send button00 enable #f))]))
  
(define button01 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button01 set-label "O")
                         (send button01 enable #f))]))

(define button02 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button02 set-label "")
                         (send button02 enable #f))]))

(define button03 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button03 set-label "")
                         (send button03 enable #f))]))

(define button04 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button04 set-label "")
                         (send button04 enable #f))]))

(define button05 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button05 set-label "")
                         (send button05 enable #f))]))

(define button06 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button06 set-label "")
                         (send button06 enable #f))]))

(define button07 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button07 set-label "")
                         (send button07 enable #f))]))

(define button08 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button08 set-label "")
                         (send button08 enable #f))]))

(define button09 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button09 set-label "")
                         (send button09 enable #f))]))



; Add a horizontal panel to the frame, with centering for buttons
(define panel1 (new horizontal-panel% [parent frame]
                                     [alignment '(center center)]))
 

; Add Buttons that play as the grid of the game
(define button10 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button10 set-label "O")
                         (send button10 enable #f))]))
  
(define button11 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button11 set-label "X")
                         (send button11 enable #f))]))

(define button12 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button12 set-label "")
                         (send button12 enable #f))]))

(define button13 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button13 set-label "")
                         (send button13 enable #f))]))

(define button14 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button14 set-label "")
                         (send button14 enable #f))]))

(define button15 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button15 set-label "")
                         (send button15 enable #f))]))

(define button16 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button16 set-label "")
                         (send button16 enable #f))]))

(define button17 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button17 set-label "")
                         (send button17 enable #f))]))

(define button18 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button18 set-label "")
                         (send button18 enable #f))]))

(define button19 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button19 set-label "")
                         (send button19 enable #f))]))



; Add a horizontal panel to the frame, with centering for buttons
(define panel2 (new horizontal-panel% [parent frame]
                                     [alignment '(center center)]))
 

; Add Buttons that play as the grid of the game
(define button20 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button20 set-label "X")
                         (send button20 enable #f))]))
  
(define button21 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button21 set-label "O")
                         (send button21 enable #f))]))

(define button22 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button22 set-label "X")
                         (send button22 enable #f))]))

(define button23 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button23 set-label "")
                         (send button23 enable #f))]))

(define button24 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button24 set-label "")
                         (send button24 enable #f))]))

(define button25 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button25 set-label "")
                         (send button25 enable #f))]))

(define button26 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button26 set-label "")
                         (send button26 enable #f))]))

(define button27 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button27 set-label "")
                         (send button27 enable #f))]))

(define button28 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button28 set-label "")
                         (send button28 enable #f))]))

(define button29 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button29 set-label "")
                         (send button29 enable #f))]))



; Add a horizontal panel to the frame, with centering for buttons
(define panel3 (new horizontal-panel% [parent frame]
                                     [alignment '(center center)]))
 

; Add Buttons that play as the grid of the game
(define button30 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button30 set-label "")
                         (send button30 enable #f))]))
  
(define button31 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button31 set-label "")
                         (send button31 enable #f))]))

(define button32 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button32 set-label "")
                         (send button32 enable #f))]))

(define button33 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button33 set-label "")
                         (send button33 enable #f))]))

(define button34 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button34 set-label "")
                         (send button34 enable #f))]))

(define button35 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button35 set-label "")
                         (send button35 enable #f))]))

(define button36 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button36 set-label "")
                         (send button36 enable #f))]))

(define button37 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button37 set-label "")
                         (send button37 enable #f))]))

(define button38 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button38 set-label "")
                         (send button38 enable #f))]))

(define button39 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button39 set-label "")
                         (send button39 enable #f))]))



; Add a horizontal panel to the frame, with centering for buttons
(define panel4 (new horizontal-panel% [parent frame]
                                     [alignment '(center center)]))
 

; Add Buttons that play as the grid of the game
(define button40 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button40 set-label "")
                         (send button40 enable #f))]))

(define button41 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button41 set-label "")
                         (send button41 enable #f))]))

(define button42 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button42 set-label "")
                         (send button42 enable #f))]))

(define button43 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button43 set-label "")
                         (send button43 enable #f))]))

(define button44 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button44 set-label "")
                         (send button44 enable #f))]))

(define button45 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button45 set-label "")
                         (send button45 enable #f))]))

(define button46 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button46 set-label "")
                         (send button46 enable #f))]))

(define button47 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button47 set-label "")
                         (send button47 enable #f))]))

(define button48 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button48 set-label "")
                         (send button48 enable #f))]))

(define button49 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button49 set-label "")
                         (send button49 enable #f))]))



; Add a horizontal panel to the frame, with centering for buttons
(define panel5 (new horizontal-panel% [parent frame]
                                     [alignment '(center center)]))
 

; Add Buttons that play as the grid of the game
(define button50 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button50 set-label "")
                         (send button50 enable #f))]))

(define button51 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button51 set-label "")
                         (send button51 enable #f))]))

(define button52 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button52 set-label "")
                         (send button52 enable #f))]))

(define button53 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button53 set-label "")
                         (send button53 enable #f))]))

(define button54 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button54 set-label "")
                         (send button54 enable #f))]))

(define button55 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button55 set-label "")
                         (send button55 enable #f))]))

(define button56 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button56 set-label "")
                         (send button56 enable #f))]))

(define button57 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button57 set-label "")
                         (send button57 enable #f))]))

(define button58 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button58 set-label "")
                         (send button58 enable #f))]))

(define button59 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button59 set-label "")
                         (send button59 enable #f))]))



; Add a horizontal panel to the frame, with centering for buttons
(define panel6 (new horizontal-panel% [parent frame]
                                     [alignment '(center center)]))
 

; Add Buttons that play as the grid of the game
(define button60 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button60 set-label "")
                         (send button60 enable #f))]))

(define button61 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button61 set-label "")
                         (send button61 enable #f))]))

(define button62 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button62 set-label "")
                         (send button62 enable #f))]))

(define button63 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button63 set-label "")
                         (send button63 enable #f))]))

(define button64 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button64 set-label "")
                         (send button64 enable #f))]))

(define button65 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button65 set-label "")
                         (send button65 enable #f))]))

(define button66 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button66 set-label "")
                         (send button66 enable #f))]))

(define button67 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button67 set-label "")
                         (send button67 enable #f))]))

(define button68 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button68 set-label "")
                         (send button68 enable #f))]))

(define button69 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button69 set-label "")
                         (send button69 enable #f))]))



; Add a horizontal panel to the frame, with centering for buttons
(define panel7 (new horizontal-panel% [parent frame]
                                     [alignment '(center center)]))
 

; Add Buttons that play as the grid of the game
(define button70 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button70 set-label "")
                         (send button70 enable #f))]))

(define button71 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button71 set-label "")
                         (send button71 enable #f))]))

(define button72 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button72 set-label "")
                         (send button72 enable #f))]))

(define button73 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button73 set-label "")
                         (send button73 enable #f))]))

(define button74 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button74 set-label "")
                         (send button74 enable #f))]))

(define button75 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button75 set-label "")
                         (send button75 enable #f))]))

(define button76 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button76 set-label "")
                         (send button76 enable #f))]))

(define button77 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button77 set-label "")
                         (send button77 enable #f))]))

(define button78 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button78 set-label "")
                         (send button78 enable #f))]))

(define button79 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button79 set-label "")
                         (send button79 enable #f))]))



; Add a horizontal panel to the frame, with centering for buttons
(define panel8 (new horizontal-panel% [parent frame]
                                     [alignment '(center center)]))
 

; Add Buttons that play as the grid of the game
(define button80 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button80 set-label "")
                         (send button80 enable #f))]))

(define button81 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button81 set-label "")
                         (send button81 enable #f))]))

(define button82 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button82 set-label "")
                         (send button82 enable #f))]))

(define button83 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button83 set-label "")
                         (send button83 enable #f))]))

(define button84 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button84 set-label "")
                         (send button84 enable #f))]))

(define button85 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button85 set-label "")
                         (send button85 enable #f))]))

(define button86 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button86 set-label "")
                         (send button86 enable #f))]))

(define button87 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button87 set-label "")
                         (send button87 enable #f))]))

(define button88 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button88 set-label "")
                         (send button88 enable #f))]))

(define button89 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button89 set-label "")
                         (send button89 enable #f))]))



; Add a horizontal panel to the frame, with centering for buttons
(define panel9 (new horizontal-panel% [parent frame]
                                     [alignment '(center center)]))
 

; Add Buttons that play as the grid of the game
(define button90 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button90 set-label "")
                         (send button90 enable #f))]))

(define button91 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button91 set-label "")
                         (send button91 enable #f))]))

(define button92 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button92 set-label "")
                         (send button92 enable #f))]))

(define button93 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button93 set-label "")
                         (send button93 enable #f))]))

(define button94 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button94 set-label "")
                         (send button94 enable #f))]))

(define button95 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button95 set-label "")
                         (send button95 enable #f))]))

(define button96 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button96 set-label "")
                         (send button96 enable #f))]))

(define button97 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button97 set-label "")
                         (send button97 enable #f))]))

(define button98 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button98 set-label "")
                         (send button98 enable #f))]))

(define button99 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button99 set-label "")
                         (send button99 enable #f))]))
  

; Initialize the interface
(define (TTT column row)
	(cond 	((or (< column 3) (< row 3))
		'(Entry error. Grid must be at least 3x3)
		)
		((= column 3)
		(send panel0 delete-child button03)
		(send panel1 delete-child button13)
		(send panel2 delete-child button23)
		(send panel3 delete-child button33)
		(send panel4 delete-child button43)
		(send panel5 delete-child button53)
		(send panel6 delete-child button63)
		(send panel7 delete-child button73)
		(send panel8 delete-child button83)
		(send panel9 delete-child button93)
		(TTT (+ column 1) row)
		)
		((= column 4)
		(send panel0 delete-child button04)
		(send panel1 delete-child button14)
		(send panel2 delete-child button24)
		(send panel3 delete-child button34)
		(send panel4 delete-child button44)
		(send panel5 delete-child button54)
		(send panel6 delete-child button64)
		(send panel7 delete-child button74)
		(send panel8 delete-child button84)
		(send panel9 delete-child button94)
		(TTT (+ column 1) row)
		)
		((= column 5)
		(send panel0 delete-child button05)
		(send panel1 delete-child button15)
		(send panel2 delete-child button25)
		(send panel3 delete-child button35)
		(send panel4 delete-child button45)
		(send panel5 delete-child button55)
		(send panel6 delete-child button65)
		(send panel7 delete-child button75)
		(send panel8 delete-child button85)
		(send panel9 delete-child button95)
		(TTT (+ column 1) row)
		)
		((= column 6)
		(send panel0 delete-child button06)
		(send panel1 delete-child button16)
		(send panel2 delete-child button26)
		(send panel3 delete-child button36)
		(send panel4 delete-child button46)
		(send panel5 delete-child button56)
		(send panel6 delete-child button66)
		(send panel7 delete-child button76)
		(send panel8 delete-child button86)
		(send panel9 delete-child button96)
		(TTT (+ column 1) row)
		)
		((= column 7)
		(send panel0 delete-child button07)
		(send panel1 delete-child button17)
		(send panel2 delete-child button27)
		(send panel3 delete-child button37)
		(send panel4 delete-child button47)
		(send panel5 delete-child button57)
		(send panel6 delete-child button67)
		(send panel7 delete-child button77)
		(send panel8 delete-child button87)
		(send panel9 delete-child button97)
		(TTT (+ column 1) row)
		)
		((= column 8)
		(send panel0 delete-child button08)
		(send panel1 delete-child button18)
		(send panel2 delete-child button28)
		(send panel3 delete-child button38)
		(send panel4 delete-child button48)
		(send panel5 delete-child button58)
		(send panel6 delete-child button68)
		(send panel7 delete-child button78)
		(send panel8 delete-child button88)
		(send panel9 delete-child button98)
		(TTT (+ column 1) row)
		)
		((= column 9)
		(send panel0 delete-child button09)
		(send panel1 delete-child button19)
		(send panel2 delete-child button29)
		(send panel3 delete-child button39)
		(send panel4 delete-child button49)
		(send panel5 delete-child button59)
		(send panel6 delete-child button69)
		(send panel7 delete-child button79)
		(send panel8 delete-child button89)
		(send panel9 delete-child button99)
		(TTT (+ column 1) row)
		)
		((= row 3)
		(send frame delete-child panel3)
		(TTT column (+ row 1))
		)
		((= row 4)
		(send frame delete-child panel4)
		(TTT column (+ row 1))
		)
		((= row 5)
		(send frame delete-child panel5)
		(TTT column (+ row 1))
		)
		((= row 6)
		(send frame delete-child panel6)
		(TTT column (+ row 1))
		)
		((= row 7)
		(send frame delete-child panel7)
		(TTT column (+ row 1))
		)
 		((= row 8)
		(send frame delete-child panel8)
		(TTT column (+ row 1))
		)
		((= row 9)
		(send frame delete-child panel9)
		(TTT column (+ row 1))
		)
		((and (= column 10) (= row 10))
		(send frame show #t)
		)
		((or (> column 10) (> row 10))
		'(Entry error. Grid must be at most 10x10)
		)
	)
)

; To delete a children
; (send panel delete-child button12)

; Una posible forma de ordenar la matriz de botones y paneles:
; (list 'button00 'button01 'button02 'button03 'button04 'button05 'button06 'button07 'button08 'button09)
; (list 'panel0 'panel1 'panel2 'panel3 'panel4 'panel5 'panel6 'panel7 'panel8 'panel9)
; formula suponiendo que los botones estan ordenados como "button[x][y]": x*n + (y+1), siendo n la cantidad de filas

; La entrada del usuario es (TTT m n), con m siendo las columnas y n las filas
