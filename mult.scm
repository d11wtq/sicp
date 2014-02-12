(define (mult a b)
  "Multiply two numbers in O(log(n)) time."
  (cond
    ((= b 0) 0)
    ((even? b) (mult (* a 2) (/ b 2)))
    (else (+ a (mult a (1- b))))))
