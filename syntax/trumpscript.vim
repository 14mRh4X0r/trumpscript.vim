" Vim syntax file
" Language: TrumpScript
" Maintainer: Willem Mulder
" Latest Revision: 13 November 2016

if exists("b:current_syntax")
  finish
endif

syn case ignore

syn keyword Conditional if else otherwise
syn match Repeat "\<as long as\>"

syn keyword Statement make nextgroup=Identifier skipwhite
syn keyword Statement tell say hear hearing hears

syn keyword Boolean true facts truth fact false lies nonsense lie

syn keyword Operator not and or
syn keyword Operator plus minus times over safe safer
syn keyword Operator less fewer smaller more greater larger

syn region trParen matchgroup=Delimiter start=',' end=';' contains=ALLBUT,Identifier
syn region trBrace matchgroup=Delimiter start=':' end='!' contains=ALLBUT,Identifier

syn match Delimiter "?"

syn region String start='"' end='"'
syn match Number '\v\d{7,}'

syn keyword trIsAre is are contained

syn match trInfixAssignment "\v[a-z']+\s+(is|are|hears)" contains=Identifier,trIsAre,Statement
syn match trEquality "\v\w+\s+(is|are).{-}\?" contains=ALLBUT,Identifier,trInfixAssignment
syn match Identifier '\v[a-z']+' contained containedin=trInfixAssignment skipwhite
syn match trIneq "\v\w+\s+is\s+not\s+" contains=trIsAre,Operator " 'is not' is never assignment


syn match SpecialComment "america is great"


let b:current_syntax = "trumpscript"

hi def link trIsAre Statement
hi def link trQuestion Delimiter
