;;; product --- Summary
;;; Commentary:
;;; Code:

(use-package use-package-hydra
  :ensure t)

(use-package indent-tools
  :ensure t)

(defhydra indent-tools-hydra (:color red :hint nil)
  "
 ^Indent123^         | ^Navigation^        | ^Actions^
------------------+---------------------+-----------
 _>_ indent       | _j_ v               | _K_ kill
 _<_ de-indent    | _k_ ʌ               | _i_ imenu
 _l_ end of level | _n_ next sibling    | _C_ Copy…
 _E_ end of fn    | _p_ previous sibling| _c_ comment
 _P_ paragraph    | _u_ up parent       | _U_ uncomment (paragraph)
 _SPC_ space      | _d_ down child      | _f_ fold
 ___ undo         | _e_ end of tree     | _q_ quit
"

  (">" indent-tools-indent)
  ("<" indent-tools-demote)
  ("E" indent-tools-indent-end-of-defun)
  ("c" indent-tools-comment)
  ("U" indent-tools-uncomment)
  ("P" indent-tools-indent-paragraph)
  ("K" indent-tools-kill-tree)
  ("C" indent-tools-copy-hydra/body :color blue)
  ("s" indent-tools-select)
  ("e" indent-tools-goto-end-of-tree)
  ("u" indent-tools-goto-parent)
  ("d" indent-tools-goto-child)
  ("S" indent-tools-select-end-of-tree)
  ("n" indent-tools-goto-next-sibling)
  ("p" indent-tools-goto-previous-sibling)
  ;; ("l" indent-tools-indent-end-of-level) not sure why this hang the emacs
  ("l" nil)
  ("i" helm-imenu)
  ("j" forward-line)
  ("k" previous-line)
  ("SPC" indent-tools-indent-space)
  ("_" undo-tree-undo)
  ("L" recenter-top-bottom)
  ("f" yafolding-toggle-element)
  ("q" nil)
  )
(defalias 'hydra-indent-tools 'indent-tools-hydra)

;; (define-key indent-tools-mode-map (kbd "f") nil))

;; (global-set-key (kbd "C-` >") 'indent-tools-hydra/body)
(global-set-key [f2] 'indent-tools-hydra/body)

;;; hydra-indent-tools.el ends here
