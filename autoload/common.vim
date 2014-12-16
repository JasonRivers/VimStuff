fu common#hungryBackspace()
  " Hungry backspace for leading spaces---delete them back until the column
  " is a multiple of &shiftwidth
  let s = strpart(getline('.'), 0, col('.'))
  " <bs> doesn't behave when &sw is 2, for whatever reason...
  retu s =~# '^ \+$' ? repeat((&sw == 2 ? "\<left>\<del>" : "\<bs>"), ((strlen(s) - 1) % &sw) + 1) : "\<bs>"
endf

fu common#hungryBackspaceWithBracketPairs(pairs)
  " When deleting an opening bracket which is immediately followed by its
  " closing counterpart, delete the closing bracket too.
  let s = strpart(getline('.'), col('.') - 2, 2)
  retu count(a:pairs, s) ? "\<del>\<bs>" : common#hungryBackspace()
endf

fu common#enter(opts)
  if get(a:opts, 'splitStrings', 0) != 0
    " If we are in a string literal, break it into two concatenated literals
    let left_context = strpart(getline('.'), 0, col('.') - 1)
    if left_context =~ '^\([^"]*"\([^"\\]\|\\.\)*"\)*[^"]*"\([^"\\]\|\\.\)*$'
      retu "\" +\"\<left>\<cr>\<right>"
    en
  en
  let pairs = get(a:opts, 'bracketPairs', [])
  if !empty(pairs)
    " If we are between an opening bracket and a closing one, indent nicely
    let s = strpart(getline('.'), col('.') - 2, 2)
    if count(pairs, s)
      retu "\<del>\<cr>".s[1]."\<c-o>O"
    en
  en
  retu "\<cr>"
endf

fu common#openBracket(left, right)
  let c = getline('.')[col('.') - 1]
  retu c == '' || c == ' ' ? a:left.a:right."\<left>" : a:left
endf

fu common#maybeInsert(ch)
  retu a:ch == getline('.')[col('.') - 1] ? "\<right>" : a:ch
endf

fu common#initBracketPair(pair)
  let [left, right] = [a:pair[0], a:pair[1]]
  exe 'ino <expr> <buffer> '.left.' common#openBracket("'.left.'", "'.right.'")'
  exe 'ino <expr> <buffer> '.right.' common#maybeInsert("'.right.'")'
endf

fu common#initBracketPairs(pairs)
  let i = 0
  wh i < len(a:pairs)
    cal common#initBracketPair(a:pairs[(i):(i + 1)])
    let i += 2
  endw
endf

fu common#vSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V'.substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endf

fu common#oed()
  let temp = @@
  norm! gvy
  exe '!chromium-browser https://oxforddictionaries.com/definition/english/'.substitute(@@, '\v\s+', '', 'g').'\#mainContent'
  let @@ = temp
endf

fu common#columnIncrement() range
  let x = min([col("'<"), col("'>")])
  let y = line("'<")
  for i in range(1, line("'>") - y)
    cal setpos('.', [0, y + i, x, 0])
    exe 'norm! '.i."\<c-a>"
  endfor
  norm! gv
endf
