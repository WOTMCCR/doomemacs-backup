(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(warning-suppress-log-types
   '((initialization)
     (initialization)
     (initialization)
     (initialization)
     (initialization)
     (initialization)
     (initialization)
     (initialization)
     (defvaralias)))
 '(warning-suppress-types
   '((initialization)
     (initialization)
     (initialization)
     (initialization)
     (initialization)
     (initialization)
     (initialization)
     (defvaralias))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq evil-default-state 'emacs)
(setq find-function-C-source-directory "/Applications/mydata/emacs-master/src")

(which-key-setup-side-window-right-bottom)
;; location of which-key window. vaid values: top, bottom, left, right,
;; or a list of any of the two. If it's a list, which-key will always try
;; the first location first. It will go to the second location if there is
;; not enough room to display any keys in the first location
;;(etq which-key-side-window-location 'bottom)

;; max width of which-key window, when displayed at left or right.
;; valid values: number of columns (integer), or percentage out of current
;; frame's width (float larger than 0 and smaller than 1)
(setq which-key-side-window-max-width 0.3)

;; max height of which-key window, when displayed at top or bottom.
;; valid values: number of lines (integer), or percentage out of current
;; frame's height (float larger than 0 and smaller than 1)
(setq which-key-side-window-max-height 0.25)

;; Allow C-h to trigger which-key before it is done automatically
(setq which-key-show-early-on-C-h t)
;; make sure which-key doesn't show normally but refreshes quickly after it is
;; triggered.
(setq which-key-idle-delay 10000)
(setq which-key-idle-secondary-delay 0.05)

(use-package ace-window
  :ensure t
  :bind (("C-x o" . 'ace-window)))


;; overrides mark-whole-buffer
;; Unbind C-h from help-command

(global-unset-key (kbd "C-h"))

;; Bind C-h to backward-delete-char
(global-set-key (kbd "C-h") 'backward-delete-char)

;; Bind help-command to a different key, for example, F1
(global-set-key (kbd "<f1>") 'help-command)

;; Set scroll margin to 5 lines
(setq scroll-margin 5)

;; Enable next-line-add-newlines
(setq next-line-add-newlines t)

(add-hook 'vterm-mode-hook (lambda () (setq buffer-read-only nil)))
