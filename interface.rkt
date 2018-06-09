#lang racket/gui

(require "Tictactoe.rkt")

; Matrix where the game values are going to be stored
(define matrix '((0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0)
		(0 0 0 0 0 0 0 0 0 0))
)

; Default row to operate when needed (values or size)
(define baseChecklist '(0 0 0 0 0 0 0 0 0 0))

; Frame where the game is played
(define frame (new frame%
                   [label "TicTacRacket"]
                   [stretchable-width #t]
                   [stretchable-height #t]))

; Interface Results of the match
(define frameWinner (new frame%
                   [label "Match Result"]
                   [stretchable-width #t]
                   [stretchable-height #t]))

(define panelResult (new horizontal-panel% [parent frameWinner]
				     [min-height 100]
                                     [alignment '(center center)]))

; Add a text field to the dialog
(define resultMessage (new message% [parent panelResult] [label "This is an easter egg. If you see this, then you shouldn't"]))
 
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
                         (send button00 set-label "O")
                         (send button00 enable #f)
			 (playerMove 0 0))]))
  
(define button01 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button01 set-label "O")
                         (send button01 enable #f)
			 (playerMove 0 1))]))

(define button02 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button02 set-label "O")
                         (send button02 enable #f)
			 (playerMove 0 2))]))

(define button03 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button03 set-label "O")
                         (send button03 enable #f)
			 (playerMove 0 3))]))

(define button04 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button04 set-label "O")
                         (send button04 enable #f)
			 (playerMove 0 4))]))

(define button05 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button05 set-label "O")
                         (send button05 enable #f)
			 (playerMove 0 5))]))

(define button06 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button06 set-label "O")
                         (send button06 enable #f)
			 (playerMove 0 6))]))

(define button07 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button07 set-label "O")
                         (send button07 enable #f)
			 (playerMove 0 7))]))

(define button08 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button08 set-label "O")
                         (send button08 enable #f)
			 (playerMove 0 8))]))

(define button09 (new button% [parent panel0]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button09 set-label "O")
                         (send button09 enable #f)
			 (playerMove 0 9))]))



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
                         (send button10 enable #f)
			 (playerMove 1 0))]))
  
(define button11 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button11 set-label "O")
                         (send button11 enable #f)
			 (playerMove 1 1))]))

(define button12 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button12 set-label "O")
                         (send button12 enable #f)
			 (playerMove 1 2))]))

(define button13 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button13 set-label "O")
                         (send button13 enable #f)
			 (playerMove 1 3))]))

(define button14 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button14 set-label "O")
                         (send button14 enable #f)
			 (playerMove 1 4))]))

(define button15 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button15 set-label "O")
                         (send button15 enable #f)
			 (playerMove 1 5))]))

(define button16 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button16 set-label "O")
                         (send button16 enable #f)
			 (playerMove 1 6))]))

(define button17 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button17 set-label "O")
                         (send button17 enable #f)
			 (playerMove 1 7))]))

(define button18 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button18 set-label "O")
                         (send button18 enable #f)
			 (playerMove 1 8))]))

(define button19 (new button% [parent panel1]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button19 set-label "O")
                         (send button19 enable #f)
			 (playerMove 1 9))]))



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
                         (send button20 set-label "O")
                         (send button20 enable #f)
			 (playerMove 2 0))]))
  
(define button21 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button21 set-label "O")
                         (send button21 enable #f)
			 (playerMove 2 1))]))

(define button22 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button22 set-label "O")
                         (send button22 enable #f)
			 (playerMove 2 2))]))

(define button23 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button23 set-label "O")
                         (send button23 enable #f)
			 (playerMove 2 3))]))

(define button24 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button24 set-label "O")
                         (send button24 enable #f)
			 (playerMove 2 4))]))

(define button25 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button25 set-label "O")
                         (send button25 enable #f)
			 (playerMove 2 5))]))

(define button26 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button26 set-label "O")
                         (send button26 enable #f)
			 (playerMove 2 6))]))

(define button27 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button27 set-label "O")
                         (send button27 enable #f)
			 (playerMove 2 7))]))

(define button28 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button28 set-label "O")
                         (send button28 enable #f)
			 (playerMove 2 8))]))

(define button29 (new button% [parent panel2]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button29 set-label "O")
                         (send button29 enable #f)
			 (playerMove 2 9))]))



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
                         (send button30 set-label "O")
                         (send button30 enable #f)
			 (playerMove 3 0))]))
  
(define button31 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button31 set-label "O")
                         (send button31 enable #f)
			 (playerMove 3 1))]))

(define button32 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button32 set-label "O")
                         (send button32 enable #f)
			 (playerMove 3 2))]))

(define button33 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button33 set-label "O")
                         (send button33 enable #f)
			 (playerMove 3 3))]))

(define button34 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button34 set-label "O")
                         (send button34 enable #f)
			 (playerMove 3 4))]))

(define button35 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button35 set-label "O")
                         (send button35 enable #f)
			 (playerMove 3 5))]))

(define button36 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button36 set-label "O")
                         (send button36 enable #f)
			 (playerMove 3 6))]))

(define button37 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button37 set-label "O")
                         (send button37 enable #f)
			 (playerMove 3 7))]))

(define button38 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button38 set-label "O")
                         (send button38 enable #f)
			 (playerMove 3 8))]))

(define button39 (new button% [parent panel3]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button39 set-label "O")
                         (send button39 enable #f)
			 (playerMove 3 9))]))



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
                         (send button40 set-label "O")
                         (send button40 enable #f)
			 (playerMove 4 0))]))

(define button41 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button41 set-label "O")
                         (send button41 enable #f)
			 (playerMove 4 1))]))

(define button42 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button42 set-label "O")
                         (send button42 enable #f)
			 (playerMove 4 2))]))

(define button43 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button43 set-label "O")
                         (send button43 enable #f)
			 (playerMove 4 3))]))

(define button44 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button44 set-label "O")
                         (send button44 enable #f)
			 (playerMove 4 4))]))

(define button45 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button45 set-label "O")
                         (send button45 enable #f)
			 (playerMove 4 5))]))

(define button46 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button46 set-label "O")
                         (send button46 enable #f)
			 (playerMove 4 6))]))

(define button47 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button47 set-label "O")
                         (send button47 enable #f)
			 (playerMove 4 7))]))

(define button48 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button48 set-label "O")
                         (send button48 enable #f)
			 (playerMove 4 8))]))

(define button49 (new button% [parent panel4]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button49 set-label "O")
                         (send button49 enable #f)
			 (playerMove 4 9))]))



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
                         (send button50 set-label "O")
                         (send button50 enable #f)
			 (playerMove 5 0))]))

(define button51 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button51 set-label "O")
                         (send button51 enable #f)
			 (playerMove 5 1))]))

(define button52 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button52 set-label "O")
                         (send button52 enable #f)
			 (playerMove 5 2))]))

(define button53 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button53 set-label "O")
                         (send button53 enable #f)
			 (playerMove 5 3))]))

(define button54 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button54 set-label "O")
                         (send button54 enable #f)
			 (playerMove 5 4))]))

(define button55 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button55 set-label "O")
                         (send button55 enable #f)
			 (playerMove 5 5))]))

(define button56 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button56 set-label "O")
                         (send button56 enable #f)
			 (playerMove 5 6))]))

(define button57 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button57 set-label "O")
                         (send button57 enable #f)
			 (playerMove 5 7))]))

(define button58 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button58 set-label "O")
                         (send button58 enable #f)
			 (playerMove 5 8))]))

(define button59 (new button% [parent panel5]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button59 set-label "O")
                         (send button59 enable #f)
			 (playerMove 5 9))]))



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
                         (send button60 set-label "O")
                         (send button60 enable #f)
			 (playerMove 6 0))]))

(define button61 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button61 set-label "O")
                         (send button61 enable #f)
			 (playerMove 6 1))]))

(define button62 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button62 set-label "O")
                         (send button62 enable #f)
			 (playerMove 6 2))]))

(define button63 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button63 set-label "O")
                         (send button63 enable #f)
			 (playerMove 6 3))]))

(define button64 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button64 set-label "O")
                         (send button64 enable #f)
			 (playerMove 6 4))]))

(define button65 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button65 set-label "O")
                         (send button65 enable #f)
			 (playerMove 6 5))]))

(define button66 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button66 set-label "O")
                         (send button66 enable #f)
			 (playerMove 6 6))]))

(define button67 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button67 set-label "O")
                         (send button67 enable #f)
			 (playerMove 6 7))]))

(define button68 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button68 set-label "O")
                         (send button68 enable #f)
			 (playerMove 6 8))]))

(define button69 (new button% [parent panel6]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button69 set-label "O")
                         (send button69 enable #f)
			 (playerMove 6 9))]))



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
                         (send button70 set-label "O")
                         (send button70 enable #f)
			 (playerMove 7 0))]))

(define button71 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button71 set-label "O")
                         (send button71 enable #f)
			 (playerMove 7 1))]))

(define button72 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button72 set-label "O")
                         (send button72 enable #f)
			 (playerMove 7 2))]))

(define button73 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button73 set-label "O")
                         (send button73 enable #f)
			 (playerMove 7 3))]))

(define button74 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button74 set-label "O")
                         (send button74 enable #f)
			 (playerMove 7 4))]))

(define button75 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button75 set-label "O")
                         (send button75 enable #f)
			 (playerMove 7 5))]))

(define button76 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button76 set-label "O")
                         (send button76 enable #f)
			 (playerMove 7 6))]))

(define button77 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button77 set-label "O")
                         (send button77 enable #f)
			 (playerMove 7 7))]))

(define button78 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button78 set-label "O")
                         (send button78 enable #f)
			 (playerMove 7 8))]))

(define button79 (new button% [parent panel7]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button79 set-label "O")
                         (send button79 enable #f)
			 (playerMove 7 9))]))



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
                         (send button80 set-label "O")
                         (send button80 enable #f)
			 (playerMove 8 0))]))

(define button81 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button81 set-label "O")
                         (send button81 enable #f)
			 (playerMove 8 1))]))

(define button82 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button82 set-label "O")
                         (send button82 enable #f)
			 (playerMove 8 2))]))

(define button83 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button83 set-label "O")
                         (send button83 enable #f)
			 (playerMove 8 3))]))

(define button84 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button84 set-label "O")
                         (send button84 enable #f)
			 (playerMove 8 4))]))

(define button85 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button85 set-label "O")
                         (send button85 enable #f)
			 (playerMove 8 5))]))

(define button86 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button86 set-label "O")
                         (send button86 enable #f)
			 (playerMove 8 6))]))

(define button87 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button87 set-label "O")
                         (send button87 enable #f)
			 (playerMove 8 7))]))

(define button88 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button88 set-label "O")
                         (send button88 enable #f)
			 (playerMove 8 8))]))

(define button89 (new button% [parent panel8]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button89 set-label "O")
                         (send button89 enable #f)
			 (playerMove 8 9))]))


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
                         (send button90 set-label "O")
                         (send button90 enable #f)
			 (playerMove 9 0))]))

(define button91 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button91 set-label "O")
                         (send button91 enable #f)
			 (playerMove 9 1))]))

(define button92 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button92 set-label "O")
                         (send button92 enable #f)
			 (playerMove 9 2))]))

(define button93 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button93 set-label "O")
                         (send button93 enable #f)
			 (playerMove 9 3))]))

(define button94 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button94 set-label "O")
                         (send button94 enable #f)
			 (playerMove 9 4))]))

(define button95 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button95 set-label "O")
                         (send button95 enable #f)
			 (playerMove 9 5))]))

(define button96 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button96 set-label "O")
                         (send button96 enable #f)
			 (playerMove 9 6))]))

(define button97 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button97 set-label "O")
                         (send button97 enable #f)
			 (playerMove 9 7))]))

(define button98 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button98 set-label "O")
                         (send button98 enable #f)
			 (playerMove 9 8))]))

(define button99 (new button% [parent panel9]
     [label ""]
     [min-width 60]
     [min-height 60]
     [vert-margin 5]
     [horiz-margin 5]
     [callback (lambda (button event)
                         (send button99 set-label "O")
                         (send button99 enable #f)
			 (playerMove 9 9))]))
  

; Initialize the interface. According to the input size, it erases the rows and columns needed.
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
		(set! matrix (map removeLast matrix))
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
		(set! matrix (map removeLast matrix))
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
		(set! matrix (map removeLast matrix))
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
		(set! matrix (map removeLast matrix))
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
		(set! matrix (map removeLast matrix))
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
		(set! matrix (map removeLast matrix))
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
		(set! matrix (map removeLast matrix))
		(TTT (+ column 1) row)
		)

		((= row 3)
		(send frame delete-child panel3)
		(set! matrix (removeLast matrix))
		(set! baseChecklist (removeLast baseChecklist))
		(TTT column (+ row 1))
		)

		((= row 4)
		(send frame delete-child panel4)
		(set! matrix (removeLast matrix))
		(set! baseChecklist (removeLast baseChecklist))
		(TTT column (+ row 1))
		)

		((= row 5)
		(send frame delete-child panel5)
		(set! matrix (removeLast matrix))
		(set! baseChecklist (removeLast baseChecklist))
		(TTT column (+ row 1))
		)

		((= row 6)
		(send frame delete-child panel6)
		(set! matrix (removeLast matrix))
		(set! baseChecklist (removeLast baseChecklist))
		(TTT column (+ row 1))
		)

		((= row 7)
		(send frame delete-child panel7)
		(set! matrix (removeLast matrix))
		(set! baseChecklist (removeLast baseChecklist))
		(TTT column (+ row 1))
		)

 		((= row 8)
		(send frame delete-child panel8)
		(set! matrix (removeLast matrix))
		(set! baseChecklist (removeLast baseChecklist))
		(TTT column (+ row 1))
		)

		((= row 9)
		(send frame delete-child panel9)
		(set! matrix (removeLast matrix))
		(set! baseChecklist (removeLast baseChecklist))
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

(define (removeLast list2remove)
	(reverse (cdr (reverse list2remove)))
)

(define (replaceInMatrix row column value)
	(set! matrix (changeRow row column value matrix '()))
)


(define (changeRow row column value oldMatrix newMatrix)
	(cond 	((> row 0)
		(changeRow (- row 1) column value (cdr oldMatrix) (append (list (car oldMatrix)) newMatrix))
		)
                
		((not (equal? -1 column))
		(changeRow (- row 1) -1 value (cdr oldMatrix) (append (list (changeColumn column value (car oldMatrix) '())) newMatrix))
		)

		((not (null? oldMatrix))
		(changeRow row column value (cdr oldMatrix) (append (list (car oldMatrix)) newMatrix))
		)

		(else
		(reverse newMatrix)
		)
	)
)

(define (changeColumn column value oldList newList)
	(cond	((> column 0)
		(changeColumn (- column 1) value (cdr oldList) (append (list (car oldList)) newList))
		)

		((equal? column 0)
		(changeColumn (- column 1) value (cdr oldList) (append (list value) newList))
		)

		((not (null? oldList))
		(changeColumn column value (cdr oldList) (append (list (car oldList)) newList))		
		)

		(else
		(reverse newList)
		)
	)
)

(define (playerMove row column)
	(replaceInMatrix row column 1)
	(cond 	((not (search_Winner matrix))
		(computerMove (nextCpuMove matrix))
		)
	)
)

; Ananlyses the computer move receive from the intelligence and play accordingly. 
(define (computerMove xy)
	(replaceInMatrix (car xy) (cadr xy) -1)
	(cond 	((and (equal? (car xy) 0) (equal? (cadr xy) 0))
		(send button00 set-label "X")
		(send button00 enable #f)
		)
		((and (equal? (car xy) 0) (equal? (cadr xy) 1))
		(send button01 set-label "X")
		(send button01 enable #f)
		)
		((and (equal? (car xy) 0) (equal? (cadr xy) 2))
		(send button02 set-label "X")
		(send button02 enable #f)
		)
		((and (equal? (car xy) 0) (equal? (cadr xy) 3))
		(send button03 set-label "X")
		(send button03 enable #f)
		)
		((and (equal? (car xy) 0) (equal? (cadr xy) 4))
		(send button04 set-label "X")
		(send button04 enable #f)
		)
		((and (equal? (car xy) 0) (equal? (cadr xy) 5))
		(send button05 set-label "X")
		(send button05 enable #f)
		)
		((and (equal? (car xy) 0) (equal? (cadr xy) 6))
		(send button06 set-label "X")
		(send button06 enable #f)
		)
		((and (equal? (car xy) 0) (equal? (cadr xy) 7))
		(send button07 set-label "X")
		(send button07 enable #f)
		)
		((and (equal? (car xy) 0) (equal? (cadr xy) 8))
		(send button08 set-label "X")
		(send button08 enable #f)
		)
		((and (equal? (car xy) 0) (equal? (cadr xy) 9))
		(send button09 set-label "X")
		(send button09 enable #f)
		)

		((and (equal? (car xy) 1) (equal? (cadr xy) 0))
		(send button10 set-label "X")
		(send button10 enable #f)
		)
		((and (equal? (car xy) 1) (equal? (cadr xy) 1))
		(send button11 set-label "X")
		(send button11 enable #f)
		)
		((and (equal? (car xy) 1) (equal? (cadr xy) 2))
		(send button12 set-label "X")
		(send button12 enable #f)
		)
		((and (equal? (car xy) 1) (equal? (cadr xy) 3))
		(send button13 set-label "X")
		(send button13 enable #f)
		)
		((and (equal? (car xy) 1) (equal? (cadr xy) 4))
		(send button14 set-label "X")
		(send button14 enable #f)
		)
		((and (equal? (car xy) 1) (equal? (cadr xy) 5))
		(send button15 set-label "X")
		(send button15 enable #f)
		)
		((and (equal? (car xy) 1) (equal? (cadr xy) 6))
		(send button16 set-label "X")
		(send button16 enable #f)
		)
		((and (equal? (car xy) 1) (equal? (cadr xy) 7))
		(send button17 set-label "X")
		(send button17 enable #f)
		)
		((and (equal? (car xy) 1) (equal? (cadr xy) 8))
		(send button18 set-label "X")
		(send button18 enable #f)
		)
		((and (equal? (car xy) 1) (equal? (cadr xy) 9))
		(send button19 set-label "X")
		(send button19 enable #f)
		)	

		((and (equal? (car xy) 2) (equal? (cadr xy) 0))
		(send button20 set-label "X")
		(send button20 enable #f)
		)
		((and (equal? (car xy) 2) (equal? (cadr xy) 1))
		(send button21 set-label "X")
		(send button21 enable #f)
		)
		((and (equal? (car xy) 2) (equal? (cadr xy) 2))
		(send button22 set-label "X")
		(send button22 enable #f)
		)
		((and (equal? (car xy) 2) (equal? (cadr xy) 3))
		(send button23 set-label "X")
		(send button23 enable #f)
		)
		((and (equal? (car xy) 2) (equal? (cadr xy) 4))
		(send button24 set-label "X")
		(send button24 enable #f)
		)
		((and (equal? (car xy) 2) (equal? (cadr xy) 5))
		(send button25 set-label "X")
		(send button25 enable #f)
		)
		((and (equal? (car xy) 2) (equal? (cadr xy) 6))
		(send button26 set-label "X")
		(send button26 enable #f)
		)
		((and (equal? (car xy) 2) (equal? (cadr xy) 7))
		(send button27 set-label "X")
		(send button27 enable #f)
		)
		((and (equal? (car xy) 2) (equal? (cadr xy) 8))
		(send button28 set-label "X")
		(send button28 enable #f)
		)
		((and (equal? (car xy) 2) (equal? (cadr xy) 9))
		(send button29 set-label "X")
		(send button29 enable #f)
		)	

		((and (equal? (car xy) 3) (equal? (cadr xy) 0))
		(send button30 set-label "X")
		(send button30 enable #f)
		)
		((and (equal? (car xy) 3) (equal? (cadr xy) 1))
		(send button31 set-label "X")
		(send button31 enable #f)
		)
		((and (equal? (car xy) 3) (equal? (cadr xy) 2))
		(send button32 set-label "X")
		(send button32 enable #f)
		)
		((and (equal? (car xy) 3) (equal? (cadr xy) 3))
		(send button33 set-label "X")
		(send button33 enable #f)
		)
		((and (equal? (car xy) 3) (equal? (cadr xy) 4))
		(send button34 set-label "X")
		(send button34 enable #f)
		)
		((and (equal? (car xy) 3) (equal? (cadr xy) 5))
		(send button35 set-label "X")
		(send button35 enable #f)
		)
		((and (equal? (car xy) 3) (equal? (cadr xy) 6))
		(send button36 set-label "X")
		(send button36 enable #f)
		)
		((and (equal? (car xy) 3) (equal? (cadr xy) 7))
		(send button37 set-label "X")
		(send button37 enable #f)
		)
		((and (equal? (car xy) 3) (equal? (cadr xy) 8))
		(send button38 set-label "X")
		(send button38 enable #f)
		)
		((and (equal? (car xy) 3) (equal? (cadr xy) 9))
		(send button39 set-label "X")
		(send button39 enable #f)
		)	

		((and (equal? (car xy) 4) (equal? (cadr xy) 0))
		(send button40 set-label "X")
		(send button40 enable #f)
		)
		((and (equal? (car xy) 4) (equal? (cadr xy) 1))
		(send button41 set-label "X")
		(send button41 enable #f)
		)
		((and (equal? (car xy) 4) (equal? (cadr xy) 2))
		(send button42 set-label "X")
		(send button42 enable #f)
		)
		((and (equal? (car xy) 4) (equal? (cadr xy) 3))
		(send button43 set-label "X")
		(send button43 enable #f)
		)
		((and (equal? (car xy) 4) (equal? (cadr xy) 4))
		(send button44 set-label "X")
		(send button44 enable #f)
		)
		((and (equal? (car xy) 4) (equal? (cadr xy) 5))
		(send button45 set-label "X")
		(send button45 enable #f)
		)
		((and (equal? (car xy) 4) (equal? (cadr xy) 6))
		(send button46 set-label "X")
		(send button46 enable #f)
		)
		((and (equal? (car xy) 4) (equal? (cadr xy) 7))
		(send button47 set-label "X")
		(send button47 enable #f)
		)
		((and (equal? (car xy) 4) (equal? (cadr xy) 8))
		(send button48 set-label "X")
		(send button48 enable #f)
		)
		((and (equal? (car xy) 4) (equal? (cadr xy) 9))
		(send button49 set-label "X")
		(send button49 enable #f)
		)	

		((and (equal? (car xy) 5) (equal? (cadr xy) 0))
		(send button50 set-label "X")
		(send button50 enable #f)
		)
		((and (equal? (car xy) 5) (equal? (cadr xy) 1))
		(send button51 set-label "X")
		(send button51 enable #f)
		)
		((and (equal? (car xy) 5) (equal? (cadr xy) 2))
		(send button52 set-label "X")
		(send button52 enable #f)
		)
		((and (equal? (car xy) 5) (equal? (cadr xy) 3))
		(send button53 set-label "X")
		(send button53 enable #f)
		)
		((and (equal? (car xy) 5) (equal? (cadr xy) 4))
		(send button54 set-label "X")
		(send button54 enable #f)
		)
		((and (equal? (car xy) 5) (equal? (cadr xy) 5))
		(send button55 set-label "X")
		(send button55 enable #f)
		)
		((and (equal? (car xy) 5) (equal? (cadr xy) 6))
		(send button56 set-label "X")
		(send button56 enable #f)
		)
		((and (equal? (car xy) 5) (equal? (cadr xy) 7))
		(send button57 set-label "X")
		(send button57 enable #f)
		)
		((and (equal? (car xy) 5) (equal? (cadr xy) 8))
		(send button58 set-label "X")
		(send button58 enable #f)
		)
		((and (equal? (car xy) 5) (equal? (cadr xy) 9))
		(send button59 set-label "X")
		(send button59 enable #f)
		)	

		((and (equal? (car xy) 6) (equal? (cadr xy) 0))
		(send button60 set-label "X")
		(send button60 enable #f)
		)
		((and (equal? (car xy) 6) (equal? (cadr xy) 1))
		(send button61 set-label "X")
		(send button61 enable #f)
		)
		((and (equal? (car xy) 6) (equal? (cadr xy) 2))
		(send button62 set-label "X")
		(send button62 enable #f)
		)
		((and (equal? (car xy) 6) (equal? (cadr xy) 3))
		(send button63 set-label "X")
		(send button63 enable #f)
		)
		((and (equal? (car xy) 6) (equal? (cadr xy) 4))
		(send button64 set-label "X")
		(send button64 enable #f)
		)
		((and (equal? (car xy) 6) (equal? (cadr xy) 5))
		(send button65 set-label "X")
		(send button65 enable #f)
		)
		((and (equal? (car xy) 6) (equal? (cadr xy) 6))
		(send button66 set-label "X")
		(send button66 enable #f)
		)
		((and (equal? (car xy) 6) (equal? (cadr xy) 7))
		(send button67 set-label "X")
		(send button67 enable #f)
		)
		((and (equal? (car xy) 6) (equal? (cadr xy) 8))
		(send button68 set-label "X")
		(send button68 enable #f)
		)
		((and (equal? (car xy) 6) (equal? (cadr xy) 9))
		(send button69 set-label "X")
		(send button69 enable #f)
		)	

		((and (equal? (car xy) 7) (equal? (cadr xy) 0))
		(send button70 set-label "X")
		(send button70 enable #f)
		)
		((and (equal? (car xy) 7) (equal? (cadr xy) 1))
		(send button71 set-label "X")
		(send button71 enable #f)
		)
		((and (equal? (car xy) 7) (equal? (cadr xy) 2))
		(send button72 set-label "X")
		(send button72 enable #f)
		)
		((and (equal? (car xy) 7) (equal? (cadr xy) 3))
		(send button73 set-label "X")
		(send button73 enable #f)
		)
		((and (equal? (car xy) 7) (equal? (cadr xy) 4))
		(send button74 set-label "X")
		(send button74 enable #f)
		)
		((and (equal? (car xy) 7) (equal? (cadr xy) 5))
		(send button75 set-label "X")
		(send button75 enable #f)
		)
		((and (equal? (car xy) 7) (equal? (cadr xy) 6))
		(send button76 set-label "X")
		(send button76 enable #f)
		)
		((and (equal? (car xy) 7) (equal? (cadr xy) 7))
		(send button77 set-label "X")
		(send button77 enable #f)
		)
		((and (equal? (car xy) 7) (equal? (cadr xy) 8))
		(send button78 set-label "X")
		(send button78 enable #f)
		)
		((and (equal? (car xy) 7) (equal? (cadr xy) 9))
		(send button79 set-label "X")
		(send button79 enable #f)
		)	

		((and (equal? (car xy) 8) (equal? (cadr xy) 0))
		(send button80 set-label "X")
		(send button80 enable #f)
		)
		((and (equal? (car xy) 8) (equal? (cadr xy) 1))
		(send button81 set-label "X")
		(send button81 enable #f)
		)
		((and (equal? (car xy) 8) (equal? (cadr xy) 2))
		(send button82 set-label "X")
		(send button82 enable #f)
		)
		((and (equal? (car xy) 8) (equal? (cadr xy) 3))
		(send button83 set-label "X")
		(send button83 enable #f)
		)
		((and (equal? (car xy) 8) (equal? (cadr xy) 4))
		(send button84 set-label "X")
		(send button84 enable #f)
		)
		((and (equal? (car xy) 8) (equal? (cadr xy) 5))
		(send button85 set-label "X")
		(send button85 enable #f)
		)
		((and (equal? (car xy) 8) (equal? (cadr xy) 6))
		(send button86 set-label "X")
		(send button86 enable #f)
		)
		((and (equal? (car xy) 8) (equal? (cadr xy) 7))
		(send button87 set-label "X")
		(send button87 enable #f)
		)
		((and (equal? (car xy) 8) (equal? (cadr xy) 8))
		(send button88 set-label "X")
		(send button88 enable #f)
		)
		((and (equal? (car xy) 8) (equal? (cadr xy) 9))
		(send button89 set-label "X")
		(send button89 enable #f)
		)	

		((and (equal? (car xy) 9) (equal? (cadr xy) 0))
		(send button90 set-label "X")
		(send button90 enable #f)
		)
		((and (equal? (car xy) 9) (equal? (cadr xy) 1))
		(send button91 set-label "X")
		(send button91 enable #f)
		)
		((and (equal? (car xy) 9) (equal? (cadr xy) 2))
		(send button92 set-label "X")
		(send button92 enable #f)
		)
		((and (equal? (car xy) 9) (equal? (cadr xy) 3))
		(send button93 set-label "X")
		(send button93 enable #f)
		)
		((and (equal? (car xy) 9) (equal? (cadr xy) 4))
		(send button94 set-label "X")
		(send button94 enable #f)
		)
		((and (equal? (car xy) 9) (equal? (cadr xy) 5))
		(send button95 set-label "X")
		(send button95 enable #f)
		)
		((and (equal? (car xy) 9) (equal? (cadr xy) 6))
		(send button96 set-label "X")
		(send button96 enable #f)
		)
		((and (equal? (car xy) 9) (equal? (cadr xy) 7))
		(send button97 set-label "X")
		(send button97 enable #f)
		)
		((and (equal? (car xy) 9) (equal? (cadr xy) 8))
		(send button98 set-label "X")
		(send button98 enable #f)
		)
		((and (equal? (car xy) 9) (equal? (cadr xy) 9))
		(send button99 set-label "X")
		(send button99 enable #f)
		)	

	)
	(search_Winner matrix)
)

; Proper function implemented to check for a member in a list. 
(define (memberOf element list2check)
	(cond	((null? list2check)
		#f
		)
		((equal? element (car list2check))
		#t
		)
		(else
		(memberOf element (cdr list2check))
		)
	)
)

; Function that calls check_Winner to verify if the winning conditions have been met. In that case, declares the winner. 
(define (search_Winner matrix)
;     (pretty-print matrix)
;	(pretty-print (equal? (check_Winner matrix) 1))
        (cond	((equal? (check_Winner matrix) 1) 
		(winner 1)
		#t
		)
	        ((equal? (check_Winner matrix) -1)
		(winner -1)
		#t
		)
                ((not (memberOf #t (map memberOf baseChecklist matrix)))
                (winner 0)
		#t
                )
		(else
		#f
		)
	)
)

; Function to be called when the winner is chosen. It hides the game and displays the result interface 
(define (winner num)
	(cond 	((equal? num 1)
		(send resultMessage set-label "				Jugador es el ganador")
		)
		((equal? num -1)
		(send resultMessage set-label "				Computadora es el ganador")
		)
		((equal? num 0)
		(send resultMessage set-label "					Es un empate")
		)
	)
	(send frame show #f)
	(send frameWinner show #t)
)

; To delete a children
; (send panel delete-child button12)

; Una posible forma de ordenar la matrix de botones y paneles:
; (list 'button00 'button01 'button02 'button03 'button04 'button05 'button06 'button07 'button08 'button09)
; (list 'panel0 'panel1 'panel2 'panel3 'panel4 'panel5 'panel6 'panel7 'panel8 'panel9)
; formula suponiendo que los botones estan ordenados como "button[x][y]": x*n + (y+1), siendo n la cantidad de filas

; La entrada del usuario es (TTT m n), con m siendo las columnas y n las filas