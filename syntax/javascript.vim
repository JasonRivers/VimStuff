if !exists('main_syntax')
  if exists("b:current_syntax") | fini | en
  let main_syntax = 'javascript'
en

setl isk+=$

sy sync fromstart
sy sync ccomment jsComment
sy sync maxlines=1000
sy case match

sy match jsDelimiter  "[+\-*/%\.=>&|\^~,;]"
sy match jsDelimiter  "!==\="
sy match jsDelimiter  "<(script)\@!"
sy match jsSpecialDelimiter "\(&&\|||\|?\|:\|!=\@!\)"

" JavaScript comments
sy region jsLineComment start="//"                    end="$" keepend
sy region jsLineComment start="^\s*//" skip="\n\s*//" end="$" keepend fold
sy region jsLineComment start="^\s*#"                 end="$" keepend
sy region jsLineComment start="^<!--"                 end="$" keepend
sy region jsComment     start="/\*"                   end="\*/"       fold

" Syntax in the JavaScript code
sy match  jsSpecial      "\\[0-7]\{1,3}\|\\x\x\x\|\\u\x\x\x\x\|\\." contained
sy region jsStringD      start=+"+ skip=+\\\\\|\\$"+ end=+"+ contains=jsSpecial
sy region jsStringS      start=+'+ skip=+\\\\\|\\$'+ end=+'+ contains=jsSpecial
sy region jsRegexpString start="/\%(\*\|/\)\@!" skip="\\\\\|\\/" end="/\([gim]\{,3}\>\)\=" contains=jsSpecial oneline
sy match  jsNumber       /-\=\<\%([1-9][0-9]*\|0[xX]\x\+\|0[0-7]*\)\>/
sy match  jsFloat        /-\=\<\%(\d\+\.\d\+\|\d\+\.\|\.\d\+\)\%([eE][+-]\=\d\+\)\=\>/
sy match  jsLabel        /\([?.]\s*\)\@<!\<\w\+\s*:/

" JavaScript Prototype
sy keyword jsPrototype prototype

" Program Keywords
sy keyword jsSource   import export
sy keyword jsVar      var
sy keyword jsType     const void
sy keyword jsOperator delete new in instanceof typeof
sy keyword jsBoolean  true false
sy keyword jsNull     null undefined
sy keyword jsThis     this

" Statement Keywords
sy keyword jsConditional if else
sy keyword jsRepeat      do while for
sy keyword jsBranch      break continue switch case default return
sy keyword jsStatement   try catch throw with finally
sy keyword jsFutureKeys  abstract enum int short boolean export interface static byte extends long super char final native synchronized class float package throws const goto private transient debugger implements protected volatile double import public

" Code blocks
sy cluster jsAll contains=jsComment,jsLineComment,jsStringD,jsStringS,jsRegexpString,
                             \jsNumber,jsFloat,jsLabel,jsSource,jsVar,jsType,jsOperator,
                             \jsBoolean,jsNull,jsFunction,jsConditional,jsRepeat,jsBranch,
                             \jsStatement,jsFutureKeys,jsDotNotation,jsDelimiter,jsSpecialDelimiter,jsThis

sy region jsBracket matchgroup=jsBracketDelimiter start="\[" end="\]" contains=@jsAll,jsParensErrB,jsParensErrC,jsBracket,jsParen,jsBlock
sy region jsParen   matchgroup=jsParenDelimiter   start="("  end=")"  contains=@jsAll,jsParensErrA,jsParensErrC,jsParen,jsBracket,jsBlock
sy region jsBlock   matchgroup=jsBlockDelimiter   start="{"  end="}"  contains=@jsAll,jsParensErrA,jsParensErrB,jsParen,jsBracket,jsBlock

" catch errors caused by a wrong parenthesis
sy match jsParensError ")\|}\|\]"
sy match jsParensErrA  contained "\]"
sy match jsParensErrB  contained ")"
sy match jsParensErrC  contained "}"

sy match  jsFunction  "\<function\>"
sy region jsFuncName  contained matchgroup=jsFuncName start="\%(\$\|\w\)*\s*(" end=")" contains=jsLineComment,jsComment,jsDelimiter nextgroup=jsFuncBlock skipwhite skipempty
sy region jsFuncBlock contained matchgroup=jsFuncBlock start="{" end="}" contains=@jsAll,jsParensErrA,jsParensErrB,jsParen,jsBracket,jsBlock fold

com -nargs=+ HL hi def link <args>
HL jsComment          Comment
HL jsLineComment      Comment
HL jsStringS          String
HL jsStringD          String
HL jsRegexpString     String
HL jsCharacter        Character
HL jsPrototype        Type
HL jsConditional      Conditional
HL jsBranch           Conditional
HL jsRepeat           Repeat
HL jsStatement        Statement
HL jsFunction         Function
HL jsError            Error
HL jsParensError      Error
HL jsParensErrA       Error
HL jsParensErrB       Error
HL jsParensErrC       Error
HL jsOperator         Operator
HL jsVar              Type
HL jsType             Type
HL jsThis             Delimiter
HL jsNull             Type
HL jsNumber           Number
HL jsFloat            Number
HL jsBoolean          Boolean
HL jsLabel            Constant
HL jsSpecial          Special
HL jsSource           Special
HL jsBracketDelimiter jsDelimiter
HL jsParenDelimiter   jsDelimiter
HL jsBlockDelimiter   jsDelimiter
HL jsDelimiter        Delimiter
HL jsSpecialDelimiter Statement

delc HL

let b:current_syntax = 'javascript'
if main_syntax ==# 'javascript'
  unl main_syntax
en
