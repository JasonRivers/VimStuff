setl fo+=n flp=^\s*\\<bar>\} nosi fdm=expr fde=<sid>fde()

cal common#initBracketPairs('()[]{}')
ino <expr> <buffer> <bs> common#hungryBackspaceWithBracketPairs(['()', '[]', '{}'])
ino <expr> <buffer> <cr> common#enter({'splitStrings': 1, 'bracketPairs': ['()', '[]', '{}']})

ino <buffer> ;; ^2
ino <buffer> ;;; ^3
ino <buffer> ;;;; ^4
ino <buffer> ;' ^{-1}
ino <buffer> <= \le
ino <buffer> >= \ge
ino <buffer> => \implies
ino <buffer> <=> \iff
ino <buffer> ... \ldots
ino <buffer> +- \pm
ino <buffer> -+ \mp
no <buffer> == gqapj

if exists('*g:Exec_tex') | fini | en

fu g:Exec_tex()
  " Withhold pdflatex output, print it only when there is an error
  !((pdflatex -halt-on-error >.out % && (evince %:p:r.pdf >/dev/null &) && rm %:p:r.aux %:p:r.log) || cat .out) && rm .out
  redr!
endf

let g:tex_flavor = 'latex'

fu s:fde()
  retu getline(v:lnum) =~# '\v^\\(chapter|section|subsection){' ? '>1' : '='
endf
