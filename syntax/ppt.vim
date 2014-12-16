if exists('b:current_syntax') | fini | en

sy match pptsep /^-$/ 
sy match pptcom /^#.*$/ 
sy match pptcut /^\.$/ 
sy match pptexe /^!.*$/ 

hi def link pptsep statement
hi def link pptcom comment
hi def link pptcut constant
hi def link pptexe special

let b:current_syntax = 'ppt'
