;;; package --- summary
;;; Commentary:
;;; Code:

(use-package elpy
  :ensure t
  :config
  (elpy-enable)
  (add-hook 'elpy-mode-hook (lambda() (highlight-indentation-mode -1))))

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(use-package py-autopep8
  :ensure t
  :init
  (add-hook 'python-mode-hook 'py-autopep8-enable-on-save))
  
;;; python.el ends here
