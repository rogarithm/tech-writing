#lang br/quicklang

(provide + *)

(define-macro (stackerizer-module-begin EXPR)
  #'(#%module-begin
     (for-each displayln (reverse (flatten EXPR)))))
(provide (rename-out [stackerizer-module-begin #%module-begin]))
                      ; is this expander exported as #%module-begin?

(define-macro (define-ops OP ...) ; args stored in `OP ...`
  #'(begin
      (define-macro-cases OP ; `OP` from `OP ...`
        [(OP FIRST) #'FIRST]
        [(OP FIRST NEXT (... ...))
         #'(list 'OP FIRST (OP NEXT (... ...)))])
      ...)) ; `...` from `OP ...`

(define-ops + *)