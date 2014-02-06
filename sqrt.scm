(define (sqrt x)
  "Find the square root of x using Newton's method."
  (find-sqrt 1.0 x))

(define (find-sqrt y x)
  (let ((closer (improve y x)))
    (if (< (abs (- y closer)) 0.00000001)
      closer
      (find-sqrt closer x))))

(define (improve y x)
  (avg y (/ x y)))

(define (avg x y)
  (/ (+ x y) 2))
