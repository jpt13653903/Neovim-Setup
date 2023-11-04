" Vim syntax file
" Language: Synchronised Backup Script
" Maintainer: J Taylor
" Latest Revision: 2013-05-30

if exists("b:current_syntax")
 finish
endif

" Default
syn match BScNormal ".*"

" Keywords
syn match BScCommands "^ *\[Backup\]"
syn match BScCommands "^ *\[Clone\]"
syn match BScCommands "^ *\[Clean\]"
syn match BScCommands "^ *\[Compare\]"
syn match BScCommands "^ *\[Contents\]"
syn match BScCommands "^ *\[Exit\]"
syn match BScCommands "^ *\[Incremental\]"
syn match BScCommands "^ *\[Log\]"
syn match BScCommands "^ *\[Script\]"
syn match BScCommands "^ *\[Synchronise\]"

syn match BScValues "^ *On"
syn match BScValues "^ *Off"

" Comment
syn match BScComment "^ *%.*" contains=@Spell
 
" Link the types
hi def link BScNormal   Normal
hi def link BScCommands Statement
hi def link BScValues   Constant
hi def link BScComment  Comment

" Set the syntax type
let b:current_syntax = "BSc"
