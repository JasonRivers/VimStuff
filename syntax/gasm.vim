if exists('b:current_syntax') | fini | en

sy match gasmreg /%\w\+/                      " register
sy match gasmstr /"[^"]*"/                    " string
sy match gasmnum /-\=\d\+\>/                  " number
sy match gasmdir /\.\w\+/                     " directive
sy match gasmlbl /\.\=\w\+:/ contains=gasmdlm " label
sy match gasmdlm /[(),:]/                     " delimiter

hi def link gasmreg special
hi def link gasmstr string
hi def link gasmnum number
hi def link gasmdlm delimiter
hi def link gasmdir preproc

let b:current_syntax = 'gasm'
