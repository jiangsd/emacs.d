;;; package --- summary

;;; Commentary:

;;; Code:

(use-package web-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.cshtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

  (setq web-mode-ac-sources-alist
	'(("css" . (ac-source-css-property))
	  ("html" . (ac-source-words-in-buffer ac-source-abbrev))))

  ;; (setq web-mode-engines-alist
	;; '(("razor" . "\\.cshtml\\'")))
  
  (setq web-mode-enable-auto-closing t)
  (setq web-mode-enable-auto-quoting t)

  (setq web-mode-enable-current-element-highlight t)
  (setq web-mode-enable-current-column-highlight t))

;;; web-mode.el ends here
