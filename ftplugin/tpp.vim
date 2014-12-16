setl cms=--##\ %s
if exists('*g:Exec_tpp') | fini | en
fu g:Exec_tpp()
  !tpp %
endf
