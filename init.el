;;; package --- summary
;;; Commentary:
;;; Code:


(package-initialize)

(setq inhibit-startup-message t)
(tool-bar-mode -1)
;; (menu-bar-mode -1)
(scroll-bar-mode -1)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(set-face-attribute 'default nil :height 140)

;; (set-frame-font "Tahoma-18")
;; (set-face-attribute 'default (selected-frame) :height 160)

;;* Font
;; (defun ora-set-font (&optional frame)
 ;; (when frame
   ;; (select-frame frame))
 ;; (condition-case nil
     ;; (set-frame-font
      ;; "DejaVu Sans Mono")
   ;; (error
    ;; (ignore-errors
      ;; (set-frame-font
       ;; "Lucida Sans Typewriter")))))
;; (ora-set-font)
;; (set-face-attribute 'default nil :height (if (eq system-type 'darwin) 150 113))
;; (ignore-errors
 ;; (set-fontset-font t nil "Symbola" nil 'append))
;; (add-hook 'after-make-frame-functions 'ora-set-font)




;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(c-set-offset 'inline-open 0)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(setq backup-directory-alist '(("." . "~/backups")))

;;; Set Super or Hyper key on Wndows 10
;; (setq w32-pass-alt-to-system nil)
;; (setq w32-alt-modifier 'super)  ; Left Windows key
(setq x-meta-keysym 'super)

;;(use-package zenburn-theme
;;  :ensure 
;  :config (load-theme 'zenburn t))
;;(load-theme 'zenburn t)


;; (load "~/.emacs.d/els/hydra-indent-tools.el")

(load "~/.emacs.d/els/hydra.el")

(load "~/.emacs.d/els/evil.el")

(load "~/.emacs.d/els/hydra-evil.el")

(load "~/.emacs.d/els/themes.el")

(load "~/.emacs.d/els/tabs.el")

(load "~/.emacs.d/els/projectile.el")

(load "~/.emacs.d/els/tree.el")

(load "~/.emacs.d/els/yaml.el")

(load "~/.emacs.d/els/indent-tools.el")

(load "~/.emacs.d/els/highlight-indent-guides.el")

(load "~/.emacs.d/els/web-mode.el")

(load "~/.emacs.d/els/lsp-mode.el")

;; (load "~/.emacs.d/els/python.el")

;; (load "~/.emacs.d/els/omnisharp.el")

;;(load "~/.emacs.d/els/scheme.el")

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#1B2B34" "#EC5f67" "#99C794" "#FAC863" "#6699CC" "#E27E8D" "#5FB3B3" "#D8DEE9"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (sanityinc-tomorrow-blue)))
 '(custom-safe-themes
   (quote
    ("82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(fci-rule-color "#C0C5CE")
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2B34" "#FAC863"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2B34" "#99C794"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2B34" "#A7ADBA"))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(objed-cursor-color "#EC5f67")
 '(package-selected-packages
   (quote
    (treemacs-projectile treemacs-icons-dired treemacs-evil lsp lspp lsp-ui dap-java dap-mode lsp-java jsp-ui company-lsp lsp-mode centaur-tabs web-mode gruvbox-theme doom-themes kaolin-themes faff-theme omnisharp counsel-projectile projectile evil py-autopep8 flycheck flychheck elpy zenburn-theme cry use-package)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(rustic-ansi-faces
   ["#1B2B34" "#EC5f67" "#99C794" "#FAC863" "#6699CC" "#E27E8D" "#5FB3B3" "#D8DEE9"])
 '(vc-annotate-background "#1B2B34")
 '(vc-annotate-color-map
   (list
    (cons 20 "#99C794")
    (cons 40 "#b9c783")
    (cons 60 "#d9c773")
    (cons 80 "#FAC863")
    (cons 100 "#f9b55f")
    (cons 120 "#f9a35b")
    (cons 140 "#F99157")
    (cons 160 "#f18a69")
    (cons 180 "#e9847b")
    (cons 200 "#E27E8D")
    (cons 220 "#e57380")
    (cons 240 "#e86973")
    (cons 260 "#EC5f67")
    (cons 280 "#da727b")
    (cons 300 "#c98690")
    (cons 320 "#b899a5")
    (cons 340 "#C0C5CE")
    (cons 360 "#C0C5CE")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
