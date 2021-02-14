#lang racket/base
(require pollen/decode)
(require (submod hyphenate safe))

(define exclusion-mark-attr '(decode "exclude"))
(define (root . elems)
	(decode `(decoded-root ,@elems)
          #:txexpr-elements-proc decode-paragraphs 
					#:block-txexpr-proc (compose1 hyphenate wrap-hanging-quotes)
          #:string-proc (compose1 smart-quotes smart-dashes)
          #:exclude-tags '(pre)
          #:exclude-attrs (list exclusion-mark-attr)))

;----------------------------------------------------------
; tag functions

(provide (all-defined-out))

(define code-tag 'code)
(define code-class "code")
(define (code . elems)
  `(,code-tag ((class ,code-class) ,exclusion-mark-attr) ,@elems))

(define title-tag 'h1)
(define (title . elems)
  `(,title-tag ,@elems))

(define section-tag 'h2)
(define (section . elems)
  `(,section-tag ,@elems))

(define subsection-tag 'h3)
(define (bold . elems)
	`(,subsection-tag ,@elems))

;(define (strong . elems)
;	`('strong ,@elems))

(define uncertain-tag 'em)
(define (uc . elems)
	`(,uncertain-tag ,@elems))
