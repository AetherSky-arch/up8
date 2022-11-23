#lang racket

;Question 1
(define (V n)
  (if(= n 0)
     2
  (+ 2 (U(- n 1)))
)
)

(define (U n)
  (if(= n 0)
     1
  (* 2 (V(- n 1)))
)
)

;Question 2
(define (paire n)
  (list (U n) (V n))
)

;Question 3
(define (suite n)
  (cond ((= n 0) (list (paire 0)))
        (else (cons (paire n) (suite (- n 1))))))

;Question 4
(define (sommep a b)
  (if (> b a)
      (+ a (sommep (+ a 1) b))
      (+ a))
)

;Question 5
(define (sommep-term a b res)
  (if (> b a)
      (sommep-term (+ a 1) b (+ res a))
      (+ a (- res 1)))
)

;Question 6
(define (sommemult n p)
  (if (= n 1)
      0
      (if (integer?(/ n p))
          (+ n (sommemult (- n 1) p))
          (sommemult (- n 1) p)
      )
  )
)

;Question 7
(define (somme-chiffre n)
  (if (< n 10)
      n
  (+ (somme-chiffre (quotient n 10)) (modulo n 10))
  )
)