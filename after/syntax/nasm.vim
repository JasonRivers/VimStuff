sy match nasmAddress /\v^(\x| ){8}:\t(\x\x ){1,7}( *\t|$)/
sy match nasmComma /,/

hi link nasmAddress comment
hi link nasmComma delimiter
hi link nasmMemReference delimiter
