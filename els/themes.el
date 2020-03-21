;;; product --- Summary
;;; Commentary:
;;; Code:

(use-package faff-theme
  :ensure t
  :config (load-theme 'faff t))

;; (use-package kaolin-themes
  ;; :ensure t
  ;; :config
  ;; (load-theme 'kaolin-light t))

 (use-package doom-themes
   :ensure t)
;;   :config
 ;;  (load-theme 'doom-nord-light t))

;; (use-package gruvbox-theme   don't use, has problem
  ;; :ensure t
  ;; :config
  ;; (load-theme 'gruvbox-dark-hard t))

;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; (load-theme 'solarized-dark t)

;; https://gitlab.com/protesilaos/modus-themes.git
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/modus-themes")

;; (setq my-themes '(faff zenburn leuven))
;; (setq my-themes '(hrbsd modus-operandi modus-vivendi kaolin-light gruvbox-light-hard gruvbox-dark-hard faff zenburn))
;; (setq my-themes '(doom-oceanic-next doom-fairy-floss modus-operandi modus-vivendi faff zenburn))
(setq my-themes '(doom-oceanic-next doom-fairy-floss doom-opera-light doom-one-light faff zenburn))
;; (setq my-themes '(modus-operandi modus-vivendi faff zenburn))

(setq my-cur-theme nil)
(defun cycle-my-theme ()
  "Cycle through a list of themes, my-themes"
  (interactive)
  (when my-cur-theme
    (disable-theme my-cur-theme)
    (setq my-themes (append my-themes (list my-cur-theme))))
  (setq my-cur-theme (pop my-themes))
  (load-theme my-cur-theme t))

;; Switch to the first theme in the list above
(cycle-my-theme)

;; Bind this to C-t
;;(global-set-key (kbd "C-t") 'cycle-my-theme)
(global-set-key [f4] 'cycle-my-theme)

;;; themes.el ends here

