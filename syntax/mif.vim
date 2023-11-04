" Vim syntax file
" Language: Altera MIF file
" Maintainer: J Taylor
" Latest Revision: 2016-06-23

if exists("b:current_syntax")
 finish
endif

" Default
" syn match MIF_Normal ".\+"

" Constants
syn match MIF_Constant "\x\+"

" Keywords
syn match MIF_Keyword "WIDTH\c"
syn match MIF_Keyword "DEPTH\c"
syn match MIF_Keyword "ADDRESS_RADIX\c"
syn match MIF_Keyword "DATA_RADIX\c"
syn match MIF_Keyword "HEX\c"
syn match MIF_Keyword "BINARY\c"
syn match MIF_Keyword "DECIMAL\c"
syn match MIF_Keyword "CONTENT\c"
syn match MIF_Keyword "BEGIN\c"
syn match MIF_Keyword "END\c"

" Operators
syn match MIF_Operator ":\|;\|\.\.\|=\|\[\|\]"

" Comment
syn match MIF_Comment "--.*" contains=@Spell
 
" Link the types
hi def link MIF_Normal   Normal
hi def link MIF_Keyword  Statement
hi def link MIF_Constant Constant
hi def link MIF_Operator Operator
hi def link MIF_Comment  Comment

" Set the syntax type
let b:current_syntax = "mif"
