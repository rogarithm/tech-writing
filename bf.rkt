#lang br/quicklang

; parsing: converting source from a format optimized for a human
; to one optimized for a machine.
; parser: a function which performs parsing job.
; It consumes source code as input and returns a parse tree.

; grammar: tool for making parser
; The grammer is a specification of the language. By putting this
; into a parser generator, you can make a parser more reasonably
; than writing it by hand.
; By defining a grammar, you can make any parser for every possible
; program written in the language.
; "A grammar is simply a way of notating any programming language's
; knowledge.