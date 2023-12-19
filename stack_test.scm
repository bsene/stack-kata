(import test)

(load "stack.scm")

(handle-exceptions exn
                   (lambda ()
                           (display "Caught an error: ")
                           (display (condition-message exn))
                           (newline))
                   (error "This is an error"))

(test-begin "stack specifications")

(test-group "Null stack operations"
            (test "null stack is empty" #t (empty (create-stack)))
            (test "null stack has size of 0" 0 (size (create-stack)))
            (test-error "prevent from push on null stack" ((lambda () (push 9 (create-stack)))))
            (test-error "prevent from pop on null stack"  ((lambda () (pop (create-stack)))))
            (test-error "prevent from peek on null stack" ((lambda ()  (peek (create-stack)))))
            
            )
;(test "stack is NOT empty when push value on it" #f (empty (push "D" (create-stack) )))

;(test "stack is empty when pop push and pop value" #t (empty (pop (push "D" (create-stack) ))))

(test-end "stack specifications")
