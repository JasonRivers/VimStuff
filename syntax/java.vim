if exists('b:current_syntax') | fini | en

sy region javaFold start="{" end="}" transparent fold

" some characters that cannot be in a java program (outside a string)
sy match javaError "[\\@`]"
sy match javaError "<<<\|\.\.\|=>\|<>\|||=\|&&=\|[^-]->\|\*\/"

sy match javaDelimiter "[\.<>()\[\]{}=+\-\*\/%;,!&|~^]"
sy match javaSpecialDelimiter "\(&&\|||\|?\|:\|!=\@!\)"

sy match javaOK "\.\.\."

" use separate name so that it can be deleted in javacc.vim
sy match   javaError2 "#\|=<"

" keyword definitions
sy keyword javaExternal        native package
sy match   javaExternal        "\<import\>\(\s\+static\>\)\?"
sy keyword javaError           goto const
sy keyword javaConditional     if else switch
sy keyword javaRepeat          while for do
sy keyword javaBoolean         true false
sy keyword javaConstant        null
sy keyword javaTypedef         this super
sy keyword javaOperator        new instanceof
sy keyword javaType            boolean char byte short int long float double
sy keyword javaType            void
sy keyword javaStatement       return
sy keyword javaStorageClass    static synchronized transient volatile final strictfp serializable
sy keyword javaExceptions      throw try catch finally
sy keyword javaAssert          assert
sy keyword javaMethodDecl      synchronized throws
sy keyword javaClassDecl       extends implements interface
" to differentiate the keyword class from MyClass.class we use a match here
sy match   javaTypedef         "\.\s*\<class\>"ms=s+1
sy keyword javaClassDecl       enum
sy match   javaClassDecl       "^class\>"
sy match   javaClassDecl       "[^.]\s*\<class\>"ms=s+1
sy match   javaAnnotation      "@\([_$a-zA-Z][_$a-zA-Z0-9]*\.\)*[_$a-zA-Z][_$a-zA-Z0-9]*\>"
sy match   javaClassDecl       "@interface\>"
sy keyword javaBranch          break continue nextgroup=javaUserLabelRef skipwhite
sy match   javaUserLabelRef    "\k\+" contained
sy match   javaVarArg          "\.\.\."
sy keyword javaScopeDecl       public protected private abstract

sy region  javaLabelRegion     transparent matchgroup=javaLabel start="\<case\>" matchgroup=NONE end=":" contains=javaNumber,javaCharacter
sy match   javaUserLabel       "^\s*[_$a-zA-Z][_$a-zA-Z0-9_]*\s*:"he=e-1 contains=javaLabel
sy keyword javaLabel           default

" The following cluster contains all java groups except the contained ones
sy cluster javaTop add=javaExternal,javaError,javaError,javaBranch,javaLabelRegion,javaLabel,javaConditional,javaRepeat,javaBoolean,javaConstant,javaTypedef,javaOperator,javaType,javaType,javaStatement,javaStorageClass,javaAssert,javaExceptions,javaMethodDecl,javaClassDecl,javaClassDecl,javaClassDecl,javaScopeDecl,javaError,javaError2,javaUserLabel,javaLangObject,javaAnnotation,javaVarArg

" Comments
sy keyword javaTodo             contained TODO FIXME XXX
sy region  javaComment          start="/\*"  end="\*/" contains=@javaCommentSpecial,javaTodo,@Spell
sy match   javaCommentStar      contained "^\s*\*[^/]"me=e-1
sy match   javaCommentStar      contained "^\s*\*$"
sy match   javaLineComment      "//.*" contains=@javaCommentSpecial2,javaTodo,@Spell

sy cluster javaTop add=javaComment,javaLineComment

sy region  javaDocComment    start="/\*\*"  end="\*/" keepend contains=javaCommentTitle,@javaHtml,javaDocTags,javaDocSeeTag,javaTodo,@Spell
sy region  javaCommentTitle  contained matchgroup=javaDocComment start="/\*\*"   matchgroup=javaCommentTitle keepend end="\.$" end="\.[ \t\r<&]"me=e-1 end="[^{]@"me=s-2,he=s-1 end="\*/"me=s-1,he=s-1 contains=@javaHtml,javaCommentStar,javaTodo,@Spell,javaDocTags,javaDocSeeTag

sy region javaDocTags         contained start="{@\(link\|linkplain\|inherit[Dd]oc\|doc[rR]oot\|value\)" end="}"
sy match  javaDocTags         contained "@\(param\|exception\|throws\|since\)\s\+\S\+" contains=javaDocParam
sy match  javaDocParam        contained "\s\S\+"
sy match  javaDocTags         contained "@\(version\|author\|return\|deprecated\|serial\|serialField\|serialData\)\>"
sy region javaDocSeeTag       contained matchgroup=javaDocTags start="@see\s\+" matchgroup=NONE end="\_."re=e-1 contains=javaDocSeeTagParam
sy match  javaDocSeeTagParam  contained @"\_[^"]\+"\|<a\s\+\_.\{-}</a>\|\(\k\|\.\)*\(#\k\+\((\_[^)]\+)\)\=\)\=@ extend
syntax case match

" match the special comment /**/
sy match   javaComment          "/\*\*/"

" Strings and constants
sy match   javaSpecialError     contained "\\."
sy match   javaSpecialCharError contained "[^']"
sy match   javaSpecialChar      contained "\\\([4-9]\d\|[0-3]\d\d\|[\"\\'ntbrf]\|u\+\x\{4\}\)"
sy region  javaString          matchgroup=javaStringDelimiter start=+"+ end=+"+ end=+$+ contains=javaSpecialChar,javaSpecialError,@Spell
" next line disabled, it can cause a crash for a long line
"sy match   javaStringError      +"\([^"\\]\|\\.\)*$+
sy match   javaCharacter        "'[^']*'" contains=javaSpecialChar,javaSpecialCharError
sy match   javaCharacter        "'\\''" contains=javaSpecialChar
sy match   javaCharacter        "'[^\\]'"
sy match   javaNumber           "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
sy match   javaNumber           "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
sy match   javaNumber           "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
sy match   javaNumber           "\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"

" unicode characters
sy match   javaSpecial "\\u\+\d\{4\}"

sy cluster javaTop add=javaDelimiter,javaSpecialDelimiter,javaString,javaCharacter,javaNumber,javaSpecial,javaStringError

" catch errors caused by wrong parenthesis
sy region  javaParenT  transparent matchgroup=javaParen  start="(" end=")" contains=@javaTop,javaParenT1
sy region  javaParenT1 transparent matchgroup=javaParen1 start="(" end=")" contains=@javaTop,javaParenT2 contained
sy region  javaParenT2 transparent matchgroup=javaParen2 start="(" end=")" contains=@javaTop,javaParenT  contained
sy match   javaParenError       ")"
" catch errors caused by wrong square parenthesis
sy region  javaParenT  transparent matchgroup=javaParen  start="\[" end="\]" contains=@javaTop,javaParenT1
sy region  javaParenT1 transparent matchgroup=javaParen1 start="\[" end="\]" contains=@javaTop,javaParenT2 contained
sy region  javaParenT2 transparent matchgroup=javaParen2 start="\[" end="\]" contains=@javaTop,javaParenT  contained
sy match   javaParenError       "\]"

sy sync ccomment javaComment minlines=10


hi def link htmlComment                 Special
hi def link htmlCommentPart             Special
hi def link javaAnnotation              PreProc
hi def link javaAssert                  Statement
hi def link javaBoolean                 Boolean
hi def link javaBraces                  Function
hi def link javaBranch                  Conditional
hi def link javaC_                      javaConstant
hi def link javaC_Java                  javaC_
hi def link javaC_JavaLang              javaC_Java
hi def link javaCharacter               Character
hi def link javaClassDecl               javaStorageClass
hi def link javaComment                 Comment
hi def link javaComment2String          javaString
hi def link javaCommentCharacter        javaCharacter
hi def link javaCommentStar             javaComment
hi def link javaCommentString           javaString
hi def link javaCommentTitle            SpecialComment
hi def link javaConditional             Conditional
hi def link javaConstant                Constant
hi def link javaDocComment              Comment
hi def link javaDocParam                Function
hi def link javaDocSeeTagParam          Function
hi def link javaDocTags                 Special
hi def link javaE_                      javaExceptions
hi def link javaE_Java                  javaE_
hi def link javaE_JavaLang              javaE_Java
hi def link javaError                   Error
hi def link javaError2                  javaError
hi def link javaExceptions              Exception
hi def link javaExternal                Include
hi def link javaFuncDef                 Function
hi def link javaLabel                   Label
hi def link javaLangObject              javaConstant
hi def link javaLineComment             Comment
hi def link javaMethodDecl              javaStorageClass
hi def link javaNumber                  Number
hi def link javaOperator                Operator
hi def link javaParenError              javaError
hi def link javaR_                      javaExceptions
hi def link javaR_Java                  javaR_
hi def link javaR_JavaLang              javaR_Java
hi def link javaRepeat                  Repeat
hi def link javaScopeDecl               javaStorageClass
hi def link javaSpaceError              Error
hi def link javaSpecial                 Special
hi def link javaSpecialChar             SpecialChar
hi def link javaSpecialCharError        Error
hi def link javaSpecialError            Error
hi def link javaStatement               Statement
hi def link javaStorageClass            StorageClass
hi def link javaString                  String
hi def link javaStringDelimiter         String
hi def link javaStringError             Error
hi def link javaTodo                    Todo
hi def link javaType                    Type
hi def link javaTypedef                 Typedef
hi def link javaUserLabel               Label
hi def link javaUserLabelRef            javaUserLabel
hi def link javaVarArg                  Function
hi def link javaX_                      javaExceptions
hi def link javaX_Java                  javaX_
hi def link javaX_JavaLang              javaX_Java
hi def link javaDelimiter               Delimiter
hi def link javaSpecialDelimiter        Statement
hi def link javaParen                   Delimiter
hi def link javaParen1                  Delimiter
hi def link javaParen2                  Delimiter

let b:current_syntax = 'java'
