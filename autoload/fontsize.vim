fu fontsize#adjust(delta)
  if &gfn =~# '\d\+$'
    let fontFamily = substitute(&gfn, '^\(.*\) \(\d\+\)$', '\1', '')
    let fontSize   = substitute(&gfn, '^\(.*\) \(\d\+\)$', '\2', '')
  el
    let fontFamily = &gfn
    let fontSize = 10
  en
  let fontSize += a:delta
  let &gfn = fontFamily.' '.fontSize
  retu fontSize
endf

fu fontsize#AdjustmentMode()
  let x = fontsize#adjust(0)
  wh 1
    echom 'Adjust font size (j/k/<Esc>): '.x
    let ch = getchar()
    if ch ==# char2nr('j')
      let x = fontsize#adjust(1)
    elseif ch ==# char2nr('k')
      let x = fontsize#adjust(-1)
    el
      retu
    en
    redr
    winp 0 0
    se lines=9999 co=9999
  endw
endf
