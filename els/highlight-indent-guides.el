;;; package --- Summary

;;; Commentary:
;;; https://github.com/DarthFennec/highlight-indent-guides.git

;;; Code:


(use-package highlight-indent-guides
  :load-path "site-lisp/highlight-indent-guides"
  :config
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
  (setq highlight-indent-guides-method 'character)
  (setq highlight-indent-guides-auto-odd-face-perc 15)
  (setq highlight-indent-guides-auto-even-face-perc 15)
  (setq highlight-indent-guides-auto-character-face-perc 20)
  )

;;; Highlight-indent-guides.el ends here
