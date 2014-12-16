function buf#cmd(c)
  if &mod && !&hid
    if confirm('This buffer has been modified.  Save?', "Yes\nNo") == 1
      up | redr
    el
      redr | echoh errormsg | ec 'aborted' | echoh none | retu
    en
  en

  exe 'sil '.a:c

  " Echo a one-line summary of where the current buffer is among other buffers
  let bs = filter(range(1, bufnr('$')), 'bufexists(v:val) && buflisted(v:val)') " buffer numbers
  let i = index(bs, bufnr('%')) " current buffer
  let names = map(copy(bs), 'fnamemodify(bufname(v:val), ":t")')
  cal map(names, 'empty(v:val) ? "*" : v:val')
  cal map(names, 'getbufvar(bs[v:key], "&mod") ? v:val."+" : v:val')

  let p = 'Buffers: ' " prefix
  let l = i ? join(names[:i - 1], ' ').' ' : ''  " left string
  let m = '['.names[i].']' " middle string
  let r = i == len(names) - 1 ? '' : ' '.join(names[i + 1:]) " right string

  let n = &co - 12 - len(p) - len(m) " limit
  if len(l) + len(r) > n
    if len(r) < n / 2
      let l = '...'.l[-(n - len(r) - 3):]
    elseif len(l) < n / 2
      let r = r[:(n - len(l) - 4)].'...'
    el
      let l = '...'.l[-((n / 2) - 3):]
      let r = r[:n / 2 - 4].'...'
    en
  en
  echoh moremsg | ec p.l.m.r | echoh none
endf
