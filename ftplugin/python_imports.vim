nn <buffer> <silent> <leader>i :cal <sid>imp()<cr>

if exists('g:did_ngn_py_imports') | fini | en
let g:did_ngn_py_imports = 1

exe 'pyf '.expand('<sfile>:p:h').'/python_imports.py'

fu s:imp()
  py ngnPyImport()
  if exists(':PyflakesUpdate') | PyflakesUpdate | en
endf
