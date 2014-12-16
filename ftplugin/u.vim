setl cms=\"\ %s
let b:hashbang = '/usr/bin/env u'

cal common#initBracketPairs('()[]{}')
ino <expr> <buffer> <bs> common#hungryBackspaceWithBracketPairs(['()', '[]', '{}'])
ino <expr> <buffer> <cr> common#enter({'bracketPairs': ['()', '[]', '{}']})
