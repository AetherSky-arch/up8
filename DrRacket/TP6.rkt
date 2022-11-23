#lang racket

(define (arbre? a)
  (or (null? a)
      (and (= 3 (length a))
           (not (list? (car a)))
           (list? (cadr a))
           (arbre? (cadr a))
           (list? (caddr a))
           (arbre? (caddr a)))))

(define (arbre-vide? a)
  (null? a))

(define (feuille? a)
  (and (not (arbre-vide? a))
       (arbre-vide? (fils-g a))
       (arbre-vide? (fils-d a))))

(define (arbre=? a1 a2)
  (equal? a1 a2))

(define (racine a)
  (car a))

(define (fils-g a)
  (cadr a))

(define (fils-d a)
  (caddr a))

(define (arbre-vide )
  '())

(define (attache-arbre r a1 a2)
  (list r a1 a2))

(define a1 '(4 (2 () ()) (8 (0 () ()) (6 () ()))))
(define a2 '(3 (5 () ()) (7 () ())))

; 1.
;  a. #f
;  b. #f
;  c. #t
;  d. '(8 (0 () ()) (6 () ()))
;  e. '(0 () ())
;  f. '(4 (5 () ()) (7 () ()))
;  g. '(2 (7 () ()) ())

; 2.
(fils-g (fils-d a1))
(attache-arbre a2 (fils-g a2) (fils-d a1))