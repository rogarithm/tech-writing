#lang br/quicklang

(define (read-syntax path port)
  (define src-lines (port->lines port))
  ; port->lines : port -> string
  ; convert the contents of port to a list of strings
  (define src-datums (format-datums '(handle ~a) src-lines))
  (define module-datum `(module stacker-mod "stacker.rkt" ,@src-datums))
  (datum->syntax #f module-datum)
  ; (module module-name which-expander module-body)
  ; the body of the module contains expressions
  ; to expand & evaluate

  ; to convert module to syntax-object, we first convert it
  ; to datum. By quoting the module, we can do it.
  ; datum preserves the list structure of the expression

  ; then, by using datum->syntax we can convert the datum
  ; into a syntax object.
  ; (datum->syntax program-context datum)
  ; if we don't need program-context, type #f in the position

  ; the syntax object we get should be the return value of the
  ; function.
  )
(provide read-syntax)

(define-macro (stacker-module-begin HANDLE ...)
  ; define-macro supports syntax pattern, which (define) doesn't.
  ; HANDLE-EXPR is a pattern variable
  ; ... guarantees the pattern variable will match each line of
  ; input code. The name, HANDLE-EXPR, is not a mandatory.
  ; It can be any other name, say HANDLE. It functions as well.
  #'(#%module-begin
     HANDLE ...
     (display (first stack)) ; it always shows evaluated last
     ))
  ; #' is an abbreviation of syntax object
  ; It also captures lexical context, a.k.a.
  ; a list of available variables
  
(provide (rename-out [stacker-module-begin #%module-begin])
         ; if you don't rename the #%module-begin macro,
         ; the imported and newly defined macros will be
         ; conflicted each other. So rename it.
         )

(define stack empty)

(define (pop-stack!)
  (define arg (first stack))
  (set! stack (rest stack))
  arg)

(define (push-stack! arg)
  (set! stack (cons arg stack)))

(define (handle [arg #f])
                 ; By putting a variable into the bracket,
                 ; you make it an optional argument.
                 ; Meaning, if the handle function called
                 ; with an argument, arg takes that value.
                 ; But if it called without an argument,
                 ; arg is set to #f                 
  (cond
    [(number? arg) (push-stack! arg)]
    [(or (equal? arg +) (equal? arg *))
     (define op-result (arg (pop-stack!) (pop-stack!)))
     (push-stack! op-result)]))
(provide handle)
(provide + *)