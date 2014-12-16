fu syntax#getHighlightingMap()
  " Parse the output of :hi into convenient data structures
  let s = ''
  let more = &more
  let &more = 0
  redir => s | sil hi | redir END
  let &more = more

  let result = {} " highlighting items, indexed by name
  let lines = split(s, '\n')
  let stanzas = []
  for line in lines
    if line =~# '^ '
      let stanzas[-1] .= line
    el
      cal add(stanzas, line)
    en
  endfor

  for stanza in stanzas
    let [name, spec] = matchlist(stanza, '^\([^ ]\+\) *xxx *\(.*\)$')[1:2]
    let item = {'name': name}
    if spec ==# 'cleared'
      let item.cleared = 1
    elseif spec[:8] ==# 'links to '
      let item.link = spec[9:]
    el
      for keyValuePair in split(spec, '\%( \+\)\%([a-z]\+=\)\@=')
        let [key, value] = split(keyValuePair, '=')
        let item[key] = value
      endfor
    en
    let result[name] = item
  endfor

  retu result
endf

fu syntax#explainHighlighting()
  " Print a summary of how the character under cursor got its highlighting

  let h = syntax#getHighlightingMap()
  let a = synstack(line('.'), col('.'))
  if empty(a)
    echoh Error
    ec 'Cursor is not over any syntax item'
    echoh None
    retu
  en

  echoh MoreMsg
  ec 'Highlighting for syntax item under cursor:'
  echoh None
  let name = synIDattr(a[-1], 'name')
  wh 1
    exe 'hi '.name
    if !has_key(h, name) || !has_key(h[name], 'link')
      break
    en
    let name = h[name].link
  endw
endf

fu syntax#longestCommonPrefix(seq0, seq1)
  let n = min([len(a:seq0), len(a:seq1)])
  let i = 0
  wh i < n && a:seq0[i] == a:seq1[i]
    let i += 1
  endw
  retu i == 0 ? [] : a:seq0[:(i - 1)]
endf

fu syntax#edit()

  if has('gui_running') || (&t_Co !=# '256')
    echoh Error
    ec 'The palette only makes sense when Vim runs in a 256-color terminal.'
    echoh None
    retu
  en

  let originalBufNr = bufnr('%')
  let originalSynID = synIDtrans(synID(line('.'), col('.'), 1))
  let originalHLGroup = synIDattr(originalSynID, 'name')
  let originalHLColor = str2nr(synIDattr(originalSynID, 'fg'))

  let sb = &sb
  let &spr = 1
  6vnew
  let &spr = sb

  map <silent> <buffer> q    :bdelete<CR>
  map <silent> <buffer> <CR> :bdelete<CR>
  map <silent> <buffer> [    7k
  map <silent> <buffer> ]    7j

  sy match c0 "x" skipempty skipwhite nextgroup=c1
  for i in range(1, 254)
    exe 'sy match c'.i.' "x" contained skipempty skipwhite nextgroup=c'.(i + 1)
  endfor
  sy match c255 "x" contained

  for i in range(256)
    exe 'hi c'.i.' ctermfg='.i
  endfor

  sy sync fromstart

  cal append(0, repeat(['xxxx'], 4) + [''])
  cal append(line('$'), repeat(repeat(['xxxxxx'], 6) + [''], 6))
  cal append(line('$'), repeat(['xxxxxx'], 4))

  setl ro noma nomod nonu wiw=6 cul

  echom 'originalHLColor = '.originalHLColor
  exe 'normal gg'.originalHLColor."/x\<CR>"
  noh

  au!
  exe 'au cursormoved <buffer> cal syntax#editCursorMoved('.originalBufNr.',"'.originalHLGroup.'")'
endf

fu syntax#editCursorMoved(originalBufNr, originalHLGroup)
  let c = synIDattr(synID(line('.'), col('.'), 1), 'name')
  if c ==# '' | retu | en
  let c = str2nr(c[1:])
  let cmd = ':hi '.a:originalHLGroup.' ctermfg='.c
  ec cmd
  exe cmd
endf
