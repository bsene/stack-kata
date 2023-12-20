(import test)

(load "stack.scm")

(test-begin "Stack specifications")

(test-group "Null stack operations"
            (test "null stack is empty" #t (empty (create-stack)))
            (test "null stack has size of 0" 0 (size (create-stack)))
            (test-error "prevent from push on null stack" ((lambda () (push 9 (create-stack)))))
            (test-error "prevent from pop on null stack"  ((lambda () (pop (create-stack)))))
            (test-error "prevent from peek on null stack" ((lambda ()  (peek (create-stack)))))
            
            )


(test-group "Bounded stack operations"
            (test "new created bounded stack is empty" #t (empty (create-stack 4)))
            (test "bounded stack is NOT empty when push" #f (empty (push #f (create-stack 4) )))
            (test "bounded stack has size of 1 when push value on it" 1 (size (push 23 (create-stack 4))))
            (test "bounded stack has size of 2 when push twice" 2 (size (push 53 (push 23 (create-stack 4)))))
            (test "bounded stack is empty when push and pop" #t (empty (pop (push 23 (create-stack 4)))))
            (test "bounded stack has size of 1 when push twice and pop" 1 (size (pop (push "lisp" (push 23 (create-stack 4))))))
            (test-error "prevent from push over capacity on bounded stack" ((lambda () (push "car" (push "cdr" (push "cadr" (push "caddr" (create-stack 2))))))))
            
            )

(test-end "Stack specifications")
