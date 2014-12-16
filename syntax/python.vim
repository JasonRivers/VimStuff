if exists("b:current_syntax") | fin | en

sy keyword pythonStatement   break continue del except exec finally pass raise return try with global assert lambda yield
sy keyword pythonStatement   def class nextgroup=pythonFunction skipwhite
sy match   pythonFunction    "[[:alpha:]_][[:alnum:]_]*" contained
sy keyword pythonRepeat      for while
sy keyword pythonConditional if elif else
sy keyword pythonOperator    and in is not or
sy match   pythonPunctuation "[()\[\]{}:=+\-*,/%\^|&!~\.<>]"
sy keyword pythonPreCondit   import from as
sy match   pythonComment     "#.*$"
sy keyword pythonSelf        self

" Decorators (new in Python 2.4)
sy match   pythonDecoratorName "[[:alpha:]_][[:alnum:]_]*\%(\.[[:alpha:]_][[:alnum:]_]*\)*" contained
sy match   pythonDecorator    "@" display nextgroup=pythonDecoratorName skipwhite

" strings
sy region pythonString    matchgroup=pythonStringDelimiter start=+[uU]\='+       end=+'+ skip=+\\\\\|\\'+ contains=pythonEscape
sy region pythonString    matchgroup=pythonStringDelimiter start=+[uU]\="+       end=+"+ skip=+\\\\\|\\"+ contains=pythonEscape
sy region pythonString    matchgroup=pythonStringDelimiter start=+[uU]\="""+     end=+"""+ contains=pythonEscape
sy region pythonString    matchgroup=pythonStringDelimiter start=+[uU]\='''+     end=+'''+ contains=pythonEscape
sy region pythonRawString matchgroup=pythonStringDelimiter start=+[uU]\=[rR]'+   end=+'+ skip=+\\\\\|\\'+
sy region pythonRawString matchgroup=pythonStringDelimiter start=+[uU]\=[rR]"+   end=+"+ skip=+\\\\\|\\"+
sy region pythonRawString matchgroup=pythonStringDelimiter start=+[uU]\=[rR]"""+ end=+"""+
sy region pythonRawString matchgroup=pythonStringDelimiter start=+[uU]\=[rR]'''+ end=+'''+
sy match pythonEscape +\\[abfnrtv'"\\]+          contained
sy match pythonEscape "\\\o\{1,3}"               contained
sy match pythonEscape "\\x\x\{2}"                contained
sy match pythonEscape "\(\\u\x\{4}\|\\U\x\{8}\)" contained
sy match pythonEscape "\\$"

" numbers (including longs and complex)
sy match pythonNumber "\<0x\x\+[Ll]\=\>"
sy match pythonNumber "\<\d\+[LlJj]\=\>"
sy match pythonNumber "\.\d\+\([eE][+-]\=\d\+\)\=[jJ]\=\>"
sy match pythonNumber "\<\d\+\.\([eE][+-]\=\d\+\)\=[jJ]\=\>"
sy match pythonNumber "\<\d\+\.\d\+\([eE][+-]\=\d\+\)\=[jJ]\=\>"


" builtin functions, types and objects, not really part of the syntax
" NGN: Match a whole word, if not preceded by a dot, and if not followed by
" whitespace and an equals sign
sy match pythonBuiltin '\v(\.)@<!<(bool|enumerate|set|frozenset|help|reversed|sorted|sum|Ellipsis|NotImplemented|__import__|abs|apply|buffer|callable|chr|classmethod|cmp|coerce|compile|complex|delattr|dict|dir|divmod|eval|execfile|file|filter|float|getattr|globals|hasattr|hash|hex|id|input|int|intern|isinstance|issubclass|iter|len|list|locals|long|map|max|min|object|oct|open|ord|pow|property|range|raw_input|reduce|reload|repr|round|setattr|slice|staticmethod|str|super|tuple|type|unichr|unicode|vars|xrange|zip|print)>(\s*\=)@!'

sy keyword pythonNull None
sy keyword pythonBoolean True False

" trailing whitespace
sy match pythonSpaceError display excludenl "\s\+$"ms=s+1
" mixed tabs and spaces
sy match pythonSpaceError display "\( \+\t\+\|\t\+ \+\)"

" This is fast but code inside triple quoted strings screws it up. It
" is impossible to fix because the only way to know if you are inside a
" triple quoted string is to start from the beginning of the file. If
" you have a fast machine you can try uncommenting the "sync minlines"
" and commenting out the rest.
sy sync match pythonSync grouphere NONE "):$"
sy sync maxlines=200
sy sync minlines=2000

com -nargs=+ HL hi def link <args>
HL pythonStatement     Statement
HL pythonFunction      Function
HL pythonDecoratorName Function
HL pythonConditional   Conditional
HL pythonRepeat        Repeat
HL pythonString        String
HL pythonRawString     String
HL pythonEscape        Special
HL pythonOperator      Operator
HL pythonPreCondit     PreCondit
HL pythonComment       Comment
HL pythonDecorator     Define
HL pythonNumber        Number
HL pythonBuiltin       Function
HL pythonException     Exception
HL pythonSpaceError    Error
HL pythonPunctuation   Delimiter
HL pythonSelf          Delimiter
HL pythonBoolean       Boolean
HL pythonNull          Constant
HL pythonStringDelimiter pythonString
delc HL

let b:current_syntax = 'python'
