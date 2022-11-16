#lang racket
(require 2htdp/image)

;exercice 1

(underlay/xy (square 160 160 "lightgray") 80 80 (square 80 80 "black"))

;exercice 2

(define (redinblack_left)
  (underlay/xy (square 100 100 "black") 0 0 (square 50 50 "red"))
)

(define (redinblack_left_down)
  (underlay/xy (square 100 100 "black") 0 50 (square 50 50 "red"))
)

(define (redinblack_right)
  (underlay/xy (square 100 100 "black") 50 0 (square 50 50 "red"))
)

(define (redinblack_right_down)
  (underlay/xy (square 100 100 "black") 50 50 (square 50 50 "red"))
)

(redinblack_left)

(redinblack_right)

(underlay/xy
 (underlay/xy
  (underlay/xy
   (underlay/xy
    (square 250 250 "white") 0 0
    (underlay/xy
     (square 150 150 "red") 0 0 (redinblack_left)
    )
   ) 150 0 (redinblack_right)
  ) 150 150 (redinblack_right_down)
 ) 0 150 (redinblack_left_down)
)

;exercice 3

(define (squareincenter color)
  (underlay (square 100 100 color) (square 50 50 "white"))
)

(define (tileincenter color)
  (underlay (square 100 100 color) (rotate 45 (square 70 70 "white")))
)

(define (colorinwhite color)
  (underlay (square 100 100 "white") (rotate 45 (square 70 70 color)))
)

(define (weirdL color)
  (underlay/xy
   (underlay/xy
    (underlay/xy (squareincenter color) 100 0 (squareincenter color)) 0 100 (tileincenter color)) 100 100 (colorinwhite color))
)


(weirdL "pink")
