if exists('b:current_syntax') | fini | end

sy sync fromstart

sy match  cType /\I\i*\([ \t\r\n]\+\(&\|\*\)*\I\)\@=/
sy match  cKeyword /\v<(goto|break|return|continue|asm|case|default|if|else|switch|while|for|do|inline|struct|union|enum|typedef|static|register|auto|volatile|extern|const|restrict)>/

sy match  cSpecial          display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
sy match  cSpecial          display contained "\\\(u\x\{4}\|U\x\{8}\)"
sy region cString           start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=cSpecial
sy region cCppString        start=+L\="+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end='$' contains=cSpecial
sy match  cCharacter        "L\='[^\\]'"
sy match  cCharacter        "L'[^']*'" contains=cSpecial
sy match  cSpecialError     "L\='\\[^'\"?\\abefnrtv]'"
sy match  cSpecialChar "L\='\\['\"?\\abefnrtv]'"
sy match  cSpecialChar display "L\='\\\o\{1,3}'"
sy match  cSpecialChar display "'\\x\x\{1,2}'"
sy match  cSpecialChar display "L'\\x\x\+'"

sy match  cBoringDelimiter /[\{\}\[\]();,:]/
sy match  cDelimiter /[\[\],:]/
sy match  cDelimiter /(\s*)/
sy match  cBoringVoid /([ \t\r\n]*void[ \t\r\n]*)/ contains=cBoringVoidParen
sy match  cBoringVoidParen /[()]/ contained

sy match cOperator   /\v<(sizeof|typeof)>/
sy match cOperator   /++\|--\|[+\-\*\/\^&|=\.<>~!%?]/
sy match cBooleanOp  /&&\|||\|!=\@!/
sy match cAssignment /[+\-\*\/^&|%]=/
sy match cAssignment /[^<>=!]\@<===\@!/

"integer number, or floating point number without a dot and with "f".
sy case ignore
sy match cNumbers    display transparent "-\=\<\d\|\.\d" contains=cNumber,cFloat,cOctalError,cOctal
sy match cNumber     display contained "-\=\d\+\(u\=l\{0,2}\|ll\=u\)\>"
sy match cNumber     display contained "-\=0x\x\+\(u\=l\{0,2}\|ll\=u\)\>"
sy match cOctal      display contained "-\=0\o\+\(u\=l\{0,2}\|ll\=u\)\>" contains=cOctalZero
sy match cOctalZero  display contained "-\=\<0"
sy match cFloat      display contained "-\=\d\+f"
sy match cFloat      display contained "-\=\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\="
sy match cFloat      display contained "-\=\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"
sy match cFloat      display contained "-\=\d\+e[-+]\=\d\+[fl]\=\>"
sy match cFloat      display contained "-\=0x\x*\.\x\+p[-+]\=\d\+[fl]\=\>"
sy match cFloat      display contained "-\=0x\x\+\.\=p[-+]\=\d\+[fl]\=\>"
sy match cOctalError display contained "-\=0\o*[89]\d*"
sy case match

sy region cPreProc start=/^\s*#/ skip=/\\$/ end=/$/ keepend contains=cComment

sy region cComment start="//" skip="\\$" end="$" keepend
sy region cComment start="^\s*#if\s\+0\s*\n" end="^\s*#endif\>" keepend
sy region cComment start="/\*" end="\*/" extend
sy region cDoctest start="//[∇∆]" skip="\\$" end="$" keepend

sy match cBoringFor /\<for\s*(\s*\%(int\s*\)\=\(\I\i*\)\s*=\s*0\s*;\s*\1\s*<\s*\([^;]\+\)\s*;\s*\1\s*++\s*)/ contains=cBoringForFor
sy match cBoringForFor  contained /\<for\>/ nextgroup=cBoringForJunk  contains=cKeyword
sy match cBoringForJunk contained /[^;]\+;/ nextgroup=cBoringForI     transparent
sy match cBoringForI    contained /[^;]\+/                            contains=TOP

hi def link cAssignment      Statement
hi def link cBooleanOp       Statement
hi def link cBoringDelimiter Boring
hi def link cBoringFor       Boring
hi def link cBoringForI      Normal
hi def link cBoringVoid      Boring
hi def link cBoringVoidParen Delimiter
hi def link cCharacter       Character
hi def link cComment         Comment
hi def link cCppString       cString
hi def link cDelimiter       Delimiter
hi def link cFloat           Float
hi def link cKeyword         Statement
hi def link cNumber          Number
hi def link cOctalError      Error
hi def link cOctal           Number
hi def link cOctalZero       PreProc
hi def link cOperator        Function
hi def link cPreProc         PreProc
hi def link cSpecialChar     cSpecial
hi def link cSpecialError    Error
hi def link cSpecial         SpecialChar
hi def link cString          String
hi def link cType            Type

let b:current_syntax = 'c'
