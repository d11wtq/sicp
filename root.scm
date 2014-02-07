(load "pow.scm")

(define (root x n)
  "Find the nth root of x using Newton's method."

  (define (find-root guess)
    (if (> n 0)
      (let ((closer (improve guess)))
        (if (< (abs (- guess closer)) 0.00000001)
          closer
          (find-root closer)))))

  (define (improve guess)
    (let ((prev-n (1- n)))
      (/ (+ (* prev-n guess)
            (/ x (pow guess prev-n)))
         n)))

  (find-root 1.0))
