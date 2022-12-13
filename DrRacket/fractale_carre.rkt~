#lang racket

(require 2htdp/image)

(define (carre0 d col)
  (square d "solid" col)
)

(define (carre-line0 n d col0 col1)
  (beside (carre1 n d col0 col1)
          (carre1 n d col0 col1)
          (carre1 n d col0 col1)
  )
)

(define (carre-line1 n d col0 col1)
  (beside (carre1 n d col0 col1)
          (carre1 n d col1 col1)
          (carre1 n d col0 col1)
  )
)
  

(define (carre1 n d col0 col1)
  (if(equal? n 0)
     (carre0 d col0)
  (above (carre-line0 (- n 1) d col0 col1)
         (carre-line1 (- n 1) d col0 col1)
         (carre-line0 (- n 1) d col0 col1)
  )
  )
)


(carre1 2 20 "black" "white")
