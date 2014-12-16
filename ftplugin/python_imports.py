#!/usr/bin/env python

from re import sub
import ast
import json
import vim

configFile = sub(r'\.\w+$', '.json', vim.eval('expand("<sfile>")'))

def getImportMap():
    with open(configFile, 'rb') as f:
        config = json.load(f)
    h = {}
    for module, names in config.items():
        for name in names:
            h[name] = module
    return h


def ngnPyImport():
    word = vim.eval('expand("<cword>")')
    t = ast.parse('\n'.join(vim.current.buffer))

    # Collect Import-s and ImportFrom-s from the tree
    importNodes = []
    importFromNodes = []
    class V(ast.NodeVisitor):
        def visit_Import(self, node):
            importNodes.append(node)
        def visit_ImportFrom(self, node):
            importFromNodes.append(node)
    V().visit(t)

    # Has `word' already been imported?
    for node in importNodes + importFromNodes:
        for alias in node.names:
            name = alias.asname or alias.name
            if name == word:
                vim.command('echoerr "\\"' + word + '\\" already imported at line ' + str(node.lineno) + '"')
                return

    lastImportLine = max([2] + [node.lineno for node in importNodes + importFromNodes])

    h = getImportMap()
    if word not in h:
        vim.command('echoerr "Don\'t know where to import \\"' + word + '\\" from"')
        return

    module = h[word]
    if not module:
        # must import `word' as a module
        vim.current.buffer[lastImportLine:lastImportLine] = ['import ' + word]
    else:
        # must import `word' from `module'
        # Is there already an ImportFrom for `module'?
        for node in importFromNodes:
            if node.module == module:
                vim.current.buffer[node.lineno - 1] = sub(
                        r'(from\s+[\w\.]+\s+import\s+[\w\s,]+)',
                        r'\1, ' + word,
                        vim.current.buffer[node.lineno - 1]
                )
                vim.command('echomsg "\\"' + word + '\\" imported from \\"' + module + '\\""')
                break
        else:
            vim.current.buffer[lastImportLine:lastImportLine] = ['from ' + str(module) + ' import ' + word]
            vim.command('echomsg "\\"' + word + '\\" imported from \\"' + module + '\\""')

