(define null '())

(define (empty stack) 
  (if (pair? stack)
    (empty (car stack))
    (= 0 (length stack))))

(define (size stack) 
  (if (pair? stack)
    (length (car stack)) 
    (length stack)))

(define (create-stack . capacity) 
  (if (null? capacity)
    null
    (cons null capacity)))

(define (push-bounded value stack) 
(cons  
 (cons value (car stack))
(cdr stack)))

(define (push value stack) 
  (if (null? stack) 
    (error "stackoverflow!")
    (push-bounded value stack)))

(define (pop stack) 
  (if (null? stack)
    (error "stackunderflow!")
    (cons (cdr (car stack)) (cdr stack))))

(define (peek stack) (error "stackunderflow!"))