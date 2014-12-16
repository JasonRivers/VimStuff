fu exec#exec(ask_for_args)
  up
  if exists('*g:Exec_'.&ft) | retu g:Exec_{&ft}() | en
  let f = fnamemodify(bufname('%'), ':p')
  if getfperm(f)[2] != 'x'
    let choice = confirm('This file is not executable.  Shall I chmod it?', "Yes\nNo", 2)
    if choice != 1 | redr | echoh errormsg | ec 'aborted' | echoh none | retu | en
    cal system('chmod u+x '.shellescape(f))
    e %
  en
  if a:ask_for_args
    let args = input('Execute with arguments: ')
    if args == '' | redr | echoh errormsg | ec 'aborted' | echoh none | retu | en
    exe '!'.shellescape(f).' '.args
  el
    exe '!'.shellescape(f)
  en
endf
