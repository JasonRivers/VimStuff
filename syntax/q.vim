"a_:1 is a_ :1
sy clear
if !exists('main_syntax')
  let main_syntax = 'q'
en

so <sfile>:p:h/k.vim
se isk=@,_,48-57,.

sy keyword qFunction abs aj aj0 all any asc attr avgs ceiling cols count csv deltas desc dev differ distinct ej enlist eval
sy keyword qFunction fills first flip floor fkeys get group gtime hclose hcount hdel hopen hsym iasc idesc inv key keys ltime
sy keyword qFunction ltrim rtrim load lower mavg maxs md5 med meta mins neg next not null or parse prds prev rand
sy keyword qFunction rank ratios raze reciprocal read0 read1 reverse rload rsave save show signum ssr string sums system
sy keyword qFunction tables til trim type ungroup upper value var view views wj wj1 ww
hi link qFunction Function

sy keyword qOperator and asof cor cov cross cut except fby ij inter lj lsq mavg mcount mdev mmax mmin mmu mod msum or pj
sy keyword qOperator rotate set sublist sv txf uj union upsert vs xasc xbar xcol xcols xdesc xexp xgroup xkey xlog xprev xrank
"where was deleted
hi link qOperator Operator

sy keyword qAdverb each peach over scan prior
hi link qAdverb Operator

sy match qIdentifier "\.\?[a-zA-Z]\+[_a-zA-Z0-9.]\+" contains=kqPublic,kqParameter
sy match kqPublic    "\<[A-Z][_a-zA-Z0-9.]\+"
sy match kqPublic    "\<\.[a-zA-Z][a-zA-Z0-9_]*\.[A-Z][_a-zA-Z0-9.]*"
sy match kqParameter /\v<([A-Z][A-Z0-9_]*|[xyz])>/

sy match qSymbol "\(`[a-zA-Z0-9.][a-zA-Z0-9_.]\+\)" contains=Type,kNullSymbol
sy match qHandle "\(`:[a-zA-Z0-9./][a-zA-Z0-9_./]\+\)" contains=Type,kNullSymbol

sy match qAssign "\<\.\=[a-zA-Z][a-zA-Z0-9_.]*\ze\(\[.*\]\)\?\s*:"
sy match qAssign "\<\.\=[a-zA-Z][a-zA-Z0-9_.]*\ze\(\[.*\]\)\?\s*[+\-*%=@&|^~,.#_!$<>]:"
sy match qAssignPublic "\<\(\.[a-zA-Z][a-zA-Z0-9_]*\.\)\?[A-Z][a-zA-Z0-9_.]*\ze\(\[.*\]\)\?\s*:"
sy match qAssignPublic "\<\(\.[a-zA-Z][a-zA-Z0-9_]*\.\)\?[A-Z][a-zA-Z0-9_.]*\ze\(\[.*\]\)\?\s*[+\-*%=@&|^~,.#_!$<>]:"
sy match qAssignParameter "\<[A-Z][A-Z0-9_]*\ze\(\[.*\]\)\?\s*:"
sy match qAssignParameter "\<[A-Z][A-Z0-9_]*\ze\(\[.*\]\)\?\s*[+\-*%=@&|^~,.#_!$<>]:"
sy match qAssignParameter "\<[xyz]\ze\(\[.*\]\)\?\s*:"
sy match qAssignParameter "\<[xyz]*\ze\(\[.*\]\)\?\s*[+\-*%=@&|^~,.#_!$<>]:"
"sy match qAssign  /\(set\|upsert\|insert\|delete\)/
"sy match qStatement            /\(exec\|select\|insert\|update\|delete\).*\(by.*\)\?from.*\(\<where\)\?\&select\|where/
"\&exec\|select\|insert\|update\|delete\|\by\|from\|where/
"sy match qFunction /where/

let b:current_syntax = 'q'
if main_syntax == 'q'
  unl main_syntax
en
