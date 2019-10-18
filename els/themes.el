;;; product --- Summary
;;; Commentary:
;;; Code:

(use-package faff-theme
  :ensure t
 :config (load-theme 'faff t))

(setq my-themes '(faff zenburn leuven))

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
