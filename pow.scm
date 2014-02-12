(define (pow x n)
  "Find the nth power of x using successive squares."

  (define (find-pow x n acc)
    (cond
      ((= n 0) acc)
      ((even? n) (find-pow (* x x) (/ n 2) acc))
      (else (find-pow x (1- n) (* acc x)))))

  (find-pow x n 1))
