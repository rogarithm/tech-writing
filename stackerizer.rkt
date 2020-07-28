#lang br/quicklang

(provide + *)

(define-macro (stackerizer-module-begin EXPR)
  #'(#%module-begin
     (for-each displayln (reverse (flatten EXPR)))))
(provide (rename-out [stackerizer-module-begin #%module-begin]))
                      ; is this expander exported as #%module-begin?

(define-macro-cases +
  [(+ FIRST) #'FIRST]
  [(+ FIRST NEXT ...) #'(list '+ FIRST (+ NEXT ...))])