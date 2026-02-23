;;; deps.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2026 
;;
;; Author:  <oldbones@omarchy>
;; Maintainer:  <oldbones@omarchy>
;; Created: February 23, 2026
;; Modified: February 23, 2026
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex text tools unix vc wp
;; Homepage: https://github.com/oldbones/deps
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(unless (package-installed-p 'lsp-mode)
  (package-refresh-contents)
  (package-install 'lsp-mode))
(provide 'deps)
;;; deps.el ends here
