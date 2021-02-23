; #lang racket/base
; 
; (require racket/file setup/xref scribble/xref rackunit racket/string)
; (require txexpr/base sugar/coerce)
; (require pollen/decode)
; 
; (define exclusion-mark-attr '(decode "exclude"))
; 
; (define subhead-tag 'h3)
; (define subhead-class "subhead")
; (define (subhead . xs)
;   `(,subhead-tag ((class ,subhead-class)) ,@xs))
; 
; (define foldable-class "foldable")
; 
; (define (foldable-subhead . xs)
;   `(,subhead-tag ((class ,(string-join (list subhead-class foldable-class))))
;                  ,@xs))
; 
; (define payload-tag 'div)
; (define payload-class "payload")
; 
; (define (folded title #:open [open #f] . xs)
;   (define openness (if open "block" "none"))
;   (define div-name (symbol->string (gensym)))
;   `(@
;     ,(foldable-subhead `(a ((href ,(format "javascript:toggle_div('~a')" div-name))) ,title))
;     (,payload-tag ((style ,(format "display:~a;" openness)) (id ,div-name) (class ,payload-class))
;                   ,@(detect-paragraphs xs #:force? #t))))
; 
; (define (folded-open title . xs)
;   (apply folded title #:open #t xs))
; 
; (define filebox-tag 'div)
; (define filebox-class "filebox")
; (define filename-tag 'div)
; (define filename-class "filename")
; 
; (define (filebox filename . xs)
;   `(,filebox-tag
;     ((class ,filebox-class))
;     (,filename-tag ((class ,filename-class) ,exclusion-mark-attr) ,(format "~a" filename))
;     ,@xs)
;   )
; 


◊; we can use - for define-meta.
◊; 
◊; how mb implement link functions?
◊; 
◊; (define (home-link url . tx-elements)
◊;          (apply link url #:class "home-link" tx-elements))
◊; example:
◊; ◊home-link["toc.html"]{read excerpts}
◊; 
◊; xref is used to make cross reference among files in the document directory. But what I need is to collect my comments on a problem somewhere out of the mx.txt.pm file, and make it easy to refer later.
◊; 
◊; For this, I think the folding function of "dual typed untyped library" would be better.
◊; 
◊; But I need to know about html and css and javascript first.
