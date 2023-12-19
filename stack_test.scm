(import test)

(load "stack.scm")

(test "new created stack is empty" #t (empty (create-stack)))
(test "stack is NOT empty when push value on it" #f (empty (push "D" (create-stack) )))

(test "stack is empty when pop push and pop value" #t (empty (pop (push "D" (create-stack) ))))