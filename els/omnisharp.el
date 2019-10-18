;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package omnisharp
  :ensure t
  :after company
  :config
  (add-hook 'csharp-mode-hook 'omnisharp-mode)
  (add-to-list 'company-backends 'company-omnisharp))

;;; omnisharp.el ends here
