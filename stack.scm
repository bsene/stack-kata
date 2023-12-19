(define (empty stack) (= 0 (length stack)))
(define (size stack) 0)

(define (create-stack) '())

(define (push value stack) 
  (if (null? stack) 
    (error "stackoverflow!")
    (cons value stack)))

(define (pop stack) 
  (if (null? stack)
    (error "stackunderflow!")
    '()))

(define (peek stack) (error "stackunderflow!"))