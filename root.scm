(load "pow.scm")

(define (root x n)
  "Find the nth root of x using Newton's method."
  (find-root x n 1.0))

(define (find-root x n guess)
  (if (> n 0)
    (let ((closer (improve x n guess)))
      (if (< (abs (- guess closer)) 0.00000001)
        closer
        (find-root x n closer)))))

(define (improve x n guess)
  (let ((prev-n (1- n)))
    (/ (+ (* prev-n guess)
          (/ x (pow guess prev-n)))
       n)))
