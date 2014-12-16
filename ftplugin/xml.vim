setl cms=<!--%s-->

nn <leader>l :%!xmllint --format -<cr><esc>ggdd
nn <leader>L <leader>cd:%w !xmllint --valid --noout -<cr>

inorea <buffer> < <c-r>=<sid>maybeXMLDecl()<cr>

if exists('g:xml_ftplugin') | fini | en
let g:xml_ftplugin = 1

fu s:maybeXMLDecl()
  let ch = nr2char(getchar(0))
  if ch != '?' | retu '<'.ch | en
  retu '<?xml version="1.0" encoding="UTF-8"?>'."\<cr>\<cr>"
endf
