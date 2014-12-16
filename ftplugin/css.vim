cal common#initBracketPair('{}')
ino <expr> <buffer> <bs> common#hungryBackspaceWithBracketPairs(['{}'])
ino <expr> <buffer> <cr> common#enter({'splitStrings': 1, 'bracketPairs': ['{}']})

nn <leader>l :call <sid>toggle()<cr>

if exists('g:css_ftplugin') | fini | en
let g:css_ftplugin = 1

fu s:toggle()
  let a = line('.')
  let b = a
  wh a > 1 && match(getline(a), '{') == -1
    let a -= 1
  endw
  wh b <= line('$') && match(getline(b), '}') == -1
    let b += 1
  endw
  if a == b
    .s/\([{;]\)\s*/\1    /g
    .s/\s*}/}/g
    .s/\([{;]\)/\1\r/g
    " Goto line a
    exe a
    norm! $=a{
  el
    exe a.','.b.'j'
  en
endf
