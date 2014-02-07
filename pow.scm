(define (pow x n)
  "Find the nth power of x"
  (find-pow x n 1))

(define (find-pow x n acc)
  (if (= n 0)
    acc
    (find-pow x (1- n) (* acc x))))
