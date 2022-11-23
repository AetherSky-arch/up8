#lang racket

(require graphics/turtles)
(require 2htdp/image)

(turtles #t)

; exercice 4

(define (c side)
  (move (/ side 2))
  (turn 90)
  (draw (/ side 2))
  (turn 90)
  (draw (/ side 2))
  (turn 90)
  (move (/ side 2))
)

(define (s side)
  (c side)
  (c side)
  (c side)
  (c side)
)

(define (rs side ang n)
  (if(equal? n 0)
     empty-image
  (begin (s side) (turn ang) (rs side ang (- n 1)))
))

; exercice 5

(define (hexa side)
  (draw side)
  (turn 60)
  (draw side)
  (turn 60)
  (draw side)
  (turn 60)
  (draw side)
  (turn 60)
  (draw side)
  (turn 60)
  (draw side)
  (turn 60)
)

(define (nhexa n side)
  (nhexa2 n n side)
)

(define (nhexa2 n n2 side)
  (if(equal? n 0)
     empty-image
  (begin (hexa side) (turn (/ 360 n2)) (nhexa2 (- n 1) n2 side))
))

; exercice 6

