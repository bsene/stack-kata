(define null '())

(define (empty-bounded stack) (= 0 (length (car stack))))

(define (empty stack) 
  (if (null? stack)
    #t
    (empty-bounded stack)))

(define (size-bounded stack) (length (car stack)))

(define (size stack) 
  (if (null? stack)
    0
    (size-bounded stack) ))

(define (create-stack . capacity) 
  (if (null? capacity)
    null
    (cons null (car capacity))))

(define (push-bounded value stack) 
  (if (= (length (car stack)) (cdr stack)) 
  (error "stackoverflow!")
  (cons  
     (cons value (car stack))
     (cdr stack))))

(define (push value stack) 
  (if (null? stack) 
    (error "stackoverflow!")
    (push-bounded value stack)))

(define (pop stack) 
  (if (null? stack)
    (error "stackunderflow!")
    (cons (cdr (car stack)) (cdr stack))))

(define (peek stack) (error "stackunderflow!"))