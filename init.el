;;; package --- summary
;;; Commentary:
;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (sanityinc-tomorrow-blue)))
 '(custom-safe-themes
   (quote
    ("82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (centaur-tabs web-mode gruvbox-theme doom-themes kaolin-themes faff-theme omnisharp counsel-projectile projectile evil py-autopep8 flycheck flychheck elpy zenburn-theme cry use-package)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



(setq inhibit-startup-message t)
(tool-bar-mode -1)
;; (menu-bar-mode -1)
(scroll-bar-mode -1)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; (set-frame-font "Tahoma-18")
;; (set-face-attribute 'default (selected-frame) :height 160)

;;* Font
;;(defun ora-set-font (&optional frame)
;;  (when frame
;;    (select-frame frame))
;;  (condition-case nil
;;      (set-frame-font
;;       "DejaVu Sans Mono")
;;    (error
;;     (ignore-errors
;;       (set-frame-font
;;        "Lucida Sans Typewriter")))))
;;(ora-set-font)
;;(set-face-attribute 'default nil :height (if (eq system-type 'darwin) 150 113))
;;(ignore-errors
;;  (set-fontset-font t nil "Symbola" nil 'append))
;;(add-hook 'after-make-frame-functions 'ora-set-font)




;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(c-set-offset 'inline-open 0)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(setq backup-directory-alist '(("." . "~/backups")))

;;(use-package zenburn-theme
;;  :ensure t
;  :config (load-theme 'zenburn t))
;;(load-theme 'zenburn t)


;; (load "~/.emacs.d/els/hydra-indent-tools.el")

(load "~/.emacs.d/els/hydra.el")

(load "~/.emacs.d/els/evil.el")

(load "~/.emacs.d/els/themes.el")

(load "~/.emacs.d/els/python.el")

(load "~/.emacs.d/els/projectile.el")

(load "~/.emacs.d/els/omnisharp.el")

(load "~/.emacs.d/els/yaml.el")

(load "~/.emacs.d/els/indent-tools.el")

(load "~/.emacs.d/els/highlight-indent-guides.el")

(load "~/.emacs.d/els/web-mode.el")

(load "~/.emacs.d/els/tabs.el")

(load "~/.emacs.d/els/hydra-evil.el")

;;(load "~/.emacs.d/els/scheme.el")

;;; init.el ends here
