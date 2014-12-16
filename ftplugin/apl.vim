let b:hashbang = '/usr/bin/env runapl'
cal common#initBracketPairs('()[]{}')
ino <expr> <buffer> <bs> common#hungryBackspaceWithBracketPairs(['()', '[]', '{}'])
ino <expr> <buffer> <cr> common#enter({'bracketPairs': ['()', '[]', '{}']})
