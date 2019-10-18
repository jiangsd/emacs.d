;;; package --- summary
;;; Commentary:
;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (faff-theme omnisharp counsel-projectile projectile evil py-autopep8 flycheck flychheck elpy zenburn-theme cry use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



(setq inhibit-startup-message t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; (set-frame-font "Tahoma-18")
(set-face-attribute 'default (selected-frame) :height 160)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

;;(use-package zenburn-theme
;;  :ensure t
;  :config (load-theme 'zenburn t))
;;(load-theme 'zenburn t)

(load "~/.emacs.d/els/evil.el")

(load "~/.emacs.d/els/themes.el")

(load "~/.emacs.d/els/python.el")

(load "~/.emacs.d/els/projectile.el")

(load "~/.emacs.d/els/omnisharp.el")

;;; init.el ends here
