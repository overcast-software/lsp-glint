;;; glint-mode.el --- Major mode for Ember Glint (.gts/.gjs) -*- lexical-binding: t; -*-

;; Author: Doug Headley
;; Version: 0.1
;; Package-Requires: ((emacs "30.2") (lsp-mode "9.0"))
;; Keywords: languages, typescript, ember, glint
;; URL: https://github.com/overcast-software/lsp-glint

;;; Commentary:
;;
;; Major mode for Ember Glint template-backed TypeScript files (.gts/.gjs).
;; Derived from typescript-ts-mode and integrates with lsp-mode.
;;

(require 'typescript-ts-mode) ;; provides tsx-ts-mode
(define-derived-mode glint-mode prog-mode "Glint"
  "Major mode for editing Ember Glint files (.gts/.gjs)."
  ;; Comment syntax
  (setq-local comment-start "//")
  (setq-local comment-end "")

  ;; Tree-sitter
  (setq-local treesit-language-at-point-function #'glint--treesit-language-at-point)
  (when (treesit-ready-p 'tsx)
    (treesit-major-mode-setup)))

(defun glint--treesit-language-at-point ()
  "Return the Tree-sitter language for the current buffer."
  (pcase (file-name-extension (buffer-file-name))
    ((or "gts" "tsx") 'tsx)
    ((or "gjs" "jsx") 'javascript)
    (_ nil)))

(define-derived-mode glint-mode tsx-ts-mode "Glint"
  "Major mode for Ember Glint (.gts/.gjs).")

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.gts\\'" . glint-mode))
(add-to-list 'auto-mode-alist '("\\.gjs\\'" . glint-mode))

(provide 'glint-mode)
;;; glint-mode.el ends here
