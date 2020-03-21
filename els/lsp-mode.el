
;;; Code:

(require 'cc-mode)

(use-package yasnippet :ensure t)
(use-package lsp-mode :ensure t)
(use-package company-lsp :ensure t)
(use-package lsp-ui :ensure t)
(use-package lsp-java :ensure t :after lsp
  :config (add-hook 'java-mode-hook 'lsp))

(use-package dap-mode
  :ensure t
  :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode t))

;; (use-package dap-java :after (lsp-java))


;;; lsp-mode.el ends here
