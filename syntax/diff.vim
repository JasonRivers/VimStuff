if exists('b:current_syntax') | fini | en

sy match diffOnly      "^Only in .*"
sy match diffIdentical "^Files .* and .* are identical$"
sy match diffDiffer    "^Files .* and .* differ$"
sy match diffBDiffer   "^Binary files .* and .* differ$"
sy match diffIsA       "^File .* is a .* while file .* is a .*"
sy match diffNoEOL     "^No newline at end of file .*"
sy match diffCommon    "^Common subdirectories: .*"

sy match diffRemoved   "^-.*"
sy match diffRemoved   "^<.*"
sy match diffAdded     "^+.*"
sy match diffAdded     "^>.*"
sy match diffChanged   "^! .*"

sy match diffSubname   " @@..*"ms=s+3 contained
sy match diffLine      "^@.*" contains=diffSubname
sy match diffLine      "^\<\d\+\>.*"
sy match diffLine      "^\*\*\*\*.*"
sy match diffLine      "^---$"

"Some versions of diff have lines like "#c#" and "#d#" (where # is a number)
sy match diffLine      "^\d\+\(,\d\+\)\=[cda]\d\+\>.*"

sy match diffFile      "^diff.*"
sy match diffFile      "^+++ .*"
sy match diffFile      "^Index: .*$"
sy match diffFile      "^==== .*$"
sy match diffFileDelimiter "^=\+$"
sy match diffOldFile   "^\*\*\* .*"
sy match diffNewFile   "^--- .*"

sy match diffComment   "^#.*"

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link diffOldFile         diffFile
hi def link diffNewFile         diffFile
hi def link diffFile            Type
hi def link diffOnly            Constant
hi def link diffIdentical       Constant
hi def link diffDiffer          Constant
hi def link diffBDiffer         Constant
hi def link diffIsA             Constant
hi def link diffNoEOL           Constant
hi def link diffCommon          Constant
hi def link diffRemoved         Special
hi def link diffChanged         PreProc
hi def link diffAdded           Identifier
hi def link diffLine            Statement
hi def link diffSubname         PreProc
hi def link diffComment         Comment
hi def link diffFileDelimiter   Comment

let b:current_syntax = 'diff'
