;;; package --- Summary

;;; Commentary:
;;; https://github.com/ema2159/centaur-tabs.git

;;; Code:

(use-package centaur-tabs
  :demand
  :config
  (setq centaur-tabs-set-bar 'left)
  (centaur-tabs-headline-match)
  (centaur-tabs-mode t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward)
  ("C-c t s" . centaur-tabs-counsel-switch-group)
  (:map evil-normal-state-map
	("g t" . centaur-tabs-forward)
	("g T" . centaur-tabs-backward)))

;;; tabs.el ends here
