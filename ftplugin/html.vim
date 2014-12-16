if exists('*g:Exec_html') | fini | en
fu g:Exec_html()
  sil !chromium-browser file://%:p
  redr!
endf
