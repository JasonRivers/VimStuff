setl cpt=.,w,b,u,t,i mp=ant\ -find\ 'build.xml' efm=%A\ %#[javac]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%-C%.%#
setl inc=^\#\s*import inex=substitute(v:fname,'\\.','/','g') sua=.java sw=4 ts=4
setl ep=uncrustify\ -q\ --frag\ -l\ JAVA\ -c\ ~/.vim/uncrustify/java.cfg cms=//%s

comp ant

nn [[ 0[m_
nn ]] $]m_

cal common#initBracketPairs('()[]{}')

ino <expr> <buffer> <bs>    common#hungryBackspaceWithBracketPairs(['()', '[]', '{}'])
ino <expr> <buffer> <cr>    <sid>enter()
ino <expr> <buffer> <space> <sid>space()
ino <buffer> @ this.
inorea <buffer> is ==
inorea <buffer> isnt !=
inorea <buffer> and &&
inorea <buffer> or \|\|

" fold everything from the beginning of the file till the class/interface/enum declaration
let l = 1
wh l <= line('$')
  let s = getline(l)
  if s =~# '^[^\*/]*\<\(class\|interface\|enum\)\>' || s =~ '^\s*@'
    if l > 10 | exe '1,'.(l - 1).'fo' | en
    break
  en
  let l += 1
endw
unl! l s

if exists('*g:Exec_java') | fini | en

fu s:enter()
  retu getline('.') =~# '\c^\s*[a-z\(].*[a-z\)]$' ? "\<end> {\<cr>\<cr>}\<up>\<c-o>cc" : common#enter({'splitStrings': 1, 'bracketPairs': ['()', '[]', '{}']})
endf

fu s:space()
  let l = getline('.')
  retu l =~# '\v^\s*(if|for|while|switch|synchronized|catch)$' && len(l) == col('.') - 1 ? " ()\<left>" : ' '
endf

fu g:Exec_java()
  !javac % && java %:r
endf
