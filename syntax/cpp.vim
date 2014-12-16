if exists('b:current_syntax') | fini | en

ru! syntax/c.vim
unl b:current_syntax

sy keyword cppStatement    new delete this friend using
sy keyword cppAccess       public protected private
sy keyword cppType         inline virtual explicit export bool wchar_t
sy keyword cppExceptions   throw try catch
sy keyword cppOperator     operator typeid
sy keyword cppOperator     and bitor or xor compl bitand and_eq or_eq xor_eq not not_eq
sy match   cppCast         "\<\(const\|static\|dynamic\|reinterpret\)_cast\s*<"me=e-1
sy match   cppCast         "\<\(const\|static\|dynamic\|reinterpret\)_cast\s*$"
sy keyword cppStorageClass mutable
sy keyword cppStructure    class typename template namespace
sy keyword cppNumber       NPOS
sy keyword cppBoolean      true false
sy match   cppDelimiter    '[+\-*{}\[\]()=;,<>&|!%^&]'
sy match   cppDelimiter    '/[^/*]'

sy match cppMinMax "[<>]?"

com -nargs=+ HL hi def link <args>
HL cppAccess       cppStatement
HL cppCast         cppStatement
HL cppExceptions   Exception
HL cppOperator     Operator
HL cppStatement    Statement
HL cppType         Type
HL cppStorageClass StorageClass
HL cppStructure    Structure
HL cppNumber       Number
HL cppBoolean      Boolean
HL cppDelimiter    Delimiter
delc HL

let b:current_syntax = 'cpp'
