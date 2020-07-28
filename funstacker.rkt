#lang br/quicklang

; Racket, instead, encourages a style called functional programming.
; It means designing our functions so that they're self-contained,
; rather than relying on state.

; So instead of updating a single element of an existing list,
; we would return a whole new list.

(define (read-syntax path port)
  (define src-lines (port->lines port))
  (define src-datums (format-datums '~a src-lines))
  (define module-datum `(module funstacker-mod "funstacker.rkt" (handle-args ,@src-datums)))
  (datum->syntax #f module-datum))
(provide read-syntax)

(define-macro (funstacker-module-begin HANDLE-ARGS-EXPR)
  #'(#%module-begin
     (display (first HANDLE-ARGS-EXPR))))
     
(provide (rename-out [funstacker-module-begin #%module-begin]))

(define (handle-args . args)
                     ; the dot is a rest argument. It means:
                     ; "gather the remaining arguments in a list
                     ; and assign it to this variable"
  (for/fold ([stack-acc empty]) ; accumulator comes first
            ([arg (in-list args)] ; then an iterator.
                   ; optional: sequence expression.
                   ; in-list is a hint to compiler that helps it
                   ; generate more efficient code.
             #:unless (void? arg))
             ; optional: guard expression.
             ; limits the iteration with a set of condition.
             ; in this, case, void tells when our source is blank
             ; blank lines, when turned into datum, becomes #void.
    
    
   ; iterates over a list of values, but each pass of the loop
   ; also returns accumulator.
   ; On each pass of for/fold, we replace the accumulator with a
   ; whole new value.
   
    (cond
      [(number? arg) (cons arg stack-acc)]
      [(or (equal? * arg) (equal? + arg))
       (define op-result
         (arg (first stack-acc) (second stack-acc)))
       (cons op-result (drop stack-acc 2))])))
                        
(provide handle-args)

(provide + *)