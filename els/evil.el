;;; package --- summary
;;; Commentary:
;;; Code:

(use-package evil
  :ensure t
  :config
  (evil-mode))


;; load evil
;;(use-package evil
;;  :ensure t ;; install the evil package if not installed
;;  :init ;; tweak evil's configuration before loading it
;;  (setq evil-search-module 'evil-search)
;;  (setq evil-ex-complete-emacs-commands nil)
;;  (setq evil-vsplit-window-right t)
;;  (setq evil-split-window-below t)
;;  (setq evil-shift-round nil)
;;  (setq evil-want-C-u-scroll t)
;;  :config ;; tweak evil after loading it
;;  (evil-mode)

  ;; example how to map a command in normal mode (called 'normal state' in evil)
;;  (define-key evil-normal-state-map (kbd ", w") 'evil-window-vsplit))

;;; evil.el ends here
