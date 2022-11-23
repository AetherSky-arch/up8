#lang racket
(require 2htdp/image)

;exercice 1

(underlay/xy (square 160 "solid" "lightgray") 80 80 (square 80 "solid" "black"))

;exercice 2

(define (redinblack_left)
  (underlay/xy (square 100 "solid" "black") 0 0 (square 50 "solid" "red"))
)

(define (redinblack_left_down)
  (underlay/xy (square 100 "solid" "black") 0 50 (square 50 "solid" "red"))
)

(define (redinblack_right)
  (underlay/xy (square 100 "solid" "black") 50 0 (square 50 "solid" "red"))
)

(define (redinblack_right_down)
  (underlay/xy (square 100 "solid" "black") 50 50 (square 50 "solid" "red"))
)

(redinblack_left)

(redinblack_right)

(underlay/xy
 (underlay/xy
  (underlay/xy
   (underlay/xy
    (square 250 "solid" "white") 0 0
    (underlay/xy
     (square 150 "solid" "red") 0 0 (redinblack_left)
    )
   ) 150 0 (redinblack_right)
  ) 150 150 (redinblack_right_down)
 ) 0 150 (redinblack_left_down)
)

;exercice 3

(define (squareincenter color)
  (underlay (square 100 "solid" color) (square 50 "solid" "white"))
)

(define (tileincenter color)
  (underlay (square 100 "solid" color) (rotate 45 (square 70 "solid" "white")))
)

(define (colorinwhite color)
  (underlay (square 100 "solid" "white") (rotate 45 (square 70 "solid" color)))
)

(define (weirdL color)
  (underlay/xy
   (underlay/xy
    (underlay/xy (squareincenter color) 100 0 (squareincenter color)) 0 100 (tileincenter color)) 100 100 (colorinwhite color))
)

(underlay/xy
 (underlay/xy
  (underlay/xy (weirdL "pink") 0 200 (rotate 90 (weirdL "red"))) 200 200 (rotate 180 (weirdL "black"))) 200 0 (rotate 270 (weirdL "red")))

;exercice 4

(define (f size)
  (underlay
   (square size "solid" (color (random 255) (random 255) (random 255))) (circle (/ size 2) "solid" (color (random 255) (random 255) (random 255)))))
(f 50)

;exercice 5

;exercice 6

;exercice 7

(define (cercle-alea nbrcercles rayonmax horizonmax verticalmax)
  (if(equal? nbrcercles 0)
     empty-image
  (underlay/xy (circle (random rayonmax) "outline" "black") (random horizonmax) verticalmax (cercle-alea (- nbrcercles 1) rayonmax horizonmax verticalmax))
))

 (cercle-alea 6 50 20 20)
; rentre dans une boucle infinie, je ne sais pas pourquoi

