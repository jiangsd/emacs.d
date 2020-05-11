
;;; Code:
(use-package treemacs
  :init
  (add-hook 'treemacs-mode-hook
            (lambda () (treemacs-resize-icons 15))))

(use-package treemacs-evil
  :after treemacs evil
  :ensure t)

(use-package treemacs-projectile
  :after treemacs projectile
  :ensure t)

(use-package treemacs-icons-dired
  :after treemacs dired
  :ensure t
  :config (treemacs-icons-dired-mode))
  
(provide 'tree)

;;; tree ends here
