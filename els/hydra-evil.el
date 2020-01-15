;;; package -- Summary

;;; Commentary:

;;; Code:

;; (defhydra hydra-zoom (global-map "<f5>")
;;   "zoom"
;;   ("g" text-scale-increase "in")
;;   ("l" text-scale-decrease "out"))

(defhydra hydra-evil-window (:color red :hint nil)
  "
    Window Size
------------------------------------------
_+_: increase height
_-_: decrease height
_>_: increase width
_<_: decrease width
"

  ("+" evil-window-increase-height)
  ("-" evil-window-decrease-height)
  (">" evil-window-increase-width)
  ("<" evil-window-decrease-width)
  ;; ("k" evil-window-decrease-height    "Decrease Window Height"))
  
  ("q" nil)
  )

(global-set-key [f5] 'hydra-evil-window/body)
;;; hydra-evil.el ends here
