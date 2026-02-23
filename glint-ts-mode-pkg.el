;;; glint-ts-mode-pkg.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2026 
;;
;; Author:  <oldbones@omarchy>
;; Maintainer:  <oldbones@omarchy>
;; Created: February 23, 2026
;; Modified: February 23, 2026
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex text tools unix vc wp
;; Homepage: https://github.com/oldbones/glint-ts-mode-pkg
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(define-package "glint-ts-mode" "0.1.0"
  "Tree-sitter major mode and LSP integration for Ember Glint (.gts/.gjs)."
  '((emacs "30.1")
    (lsp-mode "9.0")))

(provide 'glint-ts-mode-pkg)
;;; glint-ts-mode-pkg.el ends here
