![CI](https://github.com/overcast-software/lsp-glint/actions/workflows/ci.yml/badge.svg)
## Installation

M-x package-install RET lsp-glint

(require 'lsp-glint)

## Usage

Open a .gts or .gjs file. LSP will start automatically.

## Customization

(setq lsp-glint-use-global t)
(setq lsp-node-args '("--max-old-space-size=4096"))

## Treesitter
[treesitter](https://emacs-tree-sitter.github.io)
Treesitter is an import component of for glint.
The supporting languages need to be defined in the treesit-language-source-alist
``` emacs-lisp
(setq treesit-language-source-alist
   '((tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")
     (typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
     (glimmer "https://github.com/alexlafroscia/tree-sitter-glimmer")))
```
find more at tree sitter languages at the [emacs tree sitter](https://emacs-tree-sitter.github.io) website

Once these are defined they can be installed by the following
```
M-x treesit-install-langauge-grammer RET typescript
M-x treesit-install-langauge-grammer RET tsx
M-x treesit-install-langauge-grammer RET glimmer
```


