if exists('b:current_syntax') | fini | en

let s:cpo = &cpo
se cpo&vim

sy keyword csType          bool byte char decimal double float int long object sbyte short string uint ulong ushort void var
sy keyword csStorage       class delegate enum interface namespace struct
sy keyword csRepeat        break continue do for foreach goto return while
sy keyword csConditional   else if switch
sy keyword csLabel         case default
sy match   csOperatorError display +::+
sy match   csLabel         display +^\s*\I\i*\s*:\([^:]\)\@=+
sy keyword csModifier      abstract const extern internal override private protected public readonly sealed static virtual volatile
sy keyword csConstant      false null true
sy keyword csException     try catch finally throw

sy keyword csUnspecifiedStatement as base checked event fixed in is lock new operator out params ref sizeof stackalloc this typeof unchecked unsafe using
sy keyword csUnsupportedStatement add remove value
sy keyword csUnspecifiedKeyword   explicit implicit

sy match   csContextualStatement /\<yield[[:space:]\n]\+\(return\|break\)/me=s+5
sy match   csContextualStatement /\<partial[[:space:]\n]\+\(class\|struct\|interface\)/me=s+7
sy match   csContextualStatement /\<\(get\|set\)[[:space:]\n]*{/me=s+3
sy match   csContextualStatement /\<where\>[^:]\+:/me=s+5

sy match   csDelimiter /[()\[\]{}:\.,;\+\-\*\/&|^~!=<>?]\+/

sy region  csComment       start="/\*"  end="\*/" contains=@csCommentHook
sy match   csComment       "//.*$" contains=@csCommentHook

sy cluster xmlRegionHook   add=csXmlCommentLeader
sy cluster xmlCdataHook    add=csXmlCommentLeader
sy cluster xmlStartTagHook add=csXmlCommentLeader
sy keyword csXmlTag contained Libraries Packages Types Excluded ExcludedTypeName ExcludedLibraryName
sy keyword csXmlTag contained ExcludedBucketName TypeExcluded Type TypeKind TypeSignature AssemblyInfo
sy keyword csXmlTag contained AssemblyName AssemblyPublicKey AssemblyVersion AssemblyCulture Base
sy keyword csXmlTag contained BaseTypeName Interfaces Interface InterfaceName Attributes Attribute
sy keyword csXmlTag contained AttributeName Members Member MemberSignature MemberType MemberValue
sy keyword csXmlTag contained ReturnValue ReturnType Parameters Parameter MemberOfPackage
sy keyword csXmlTag contained ThreadingSafetyStatement Docs devdoc example overload remarks returns summary
sy keyword csXmlTag contained threadsafe value internalonly nodoc exception param permission platnote
sy keyword csXmlTag contained seealso b c i pre sub sup block code note paramref see subscript superscript
sy keyword csXmlTag contained list listheader item term description altcompliant altmember

sy cluster xmlTagHook add=csXmlTag

sy match   csXmlCommentLeader  +\/\/\/+    contained
sy match   csXmlComment        +\/\/\/.*$+ contains=csXmlCommentLeader,@csXml
syntax include @csXml syntax/xml.vim
hi def link xmlRegion Comment

sy region  csPreCondit start="^\s*#\s*\(define\|undef\|if\|elif\|else\|endif\|line\|error\|warning\)" skip="\\$" end="$" contains=csComment keepend
sy region  csRegion matchgroup=csPreCondit start="^\s*#\s*region.*$" end="^\s*#\s*endregion" transparent fold contains=TOP

sy match   csSpecialError      contained "\\."
sy match   csSpecialCharError  contained "[^']"

sy match   csSpecialChar       contained +\\["\\'0abfnrtvx]+

sy match   csUnicodeNumber     +\\\(u\x\{4}\|U\x\{8}\)+ contained contains=csUnicodeSpecifier
sy match   csUnicodeSpecifier  +\\[uU]+ contained
sy region  csVerbatimString    start=+@"+ end=+"+ skip=+""+ contains=csVerbatimSpec
sy match   csVerbatimSpec      +@"+he=s+1 contained
sy region  csString            start=+"+  end=+"+ end=+$+ contains=csSpecialChar,csSpecialError,csUnicodeNumber
sy match   csCharacter         "'[^']*'" contains=csSpecialChar,csSpecialCharError
sy match   csCharacter         "'\\''" contains=csSpecialChar
sy match   csCharacter         "'[^\\]'"
sy match   csNumber            "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lLuUmM]\=\>"
sy match   csNumber            "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdDmM]\="
sy match   csNumber            "\<\d\+[eE][-+]\=\d\+[fFdDmM]\=\>"
sy match   csNumber            "\<\d\+\([eE][-+]\=\d\+\)\=[fFdDmM]\>"

hi def link csCharacter                 Character
hi def link csComment                   Comment
hi def link csConditional               Conditional
hi def link csConstant                  Constant
hi def link csContextualStatement       Statement
hi def link csDelimiter                 Delimiter
hi def link csException                 Exception
hi def link csLabel                     Label
hi def link csModifier                  StorageClass
hi def link csNumber                    Number
hi def link csOperatorError             Error
hi def link csPreCondit                 PreCondit
hi def link csRepeat                    Repeat
hi def link csSpecialCharError          Error
hi def link csSpecialChar               SpecialChar
hi def link csSpecialError              Error
hi def link csStorage                   StorageClass
hi def link csString                    String
hi def link csTodo                      Todo
hi def link csType                      Type
hi def link csUnicodeNumber             SpecialChar
hi def link csUnicodeSpecifier          SpecialChar
hi def link csUnspecifiedKeyword        Keyword
hi def link csUnspecifiedStatement      Statement
hi def link csUnsupportedStatement      Statement
hi def link csVerbatimSpec              SpecialChar
hi def link csVerbatimString            String

" xml markup
hi def link csXmlCommentLeader          Comment
hi def link csXmlComment                Comment
hi def link csXmlTag                    Statement

let b:current_syntax = 'cs'

let &cpo = s:cpo
unl s:cpo
