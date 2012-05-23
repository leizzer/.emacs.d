(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (misterioso)))
 '(electric-indent-mode t)
 '(electric-pair-mode t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(ruby-indent-tabs-mode nil)
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Marmalade Repository
(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;; Require packages
(require 'auto-complete)
(require 'yaml-mode)

;; Hook for Ruby-end minor mode
(add-hook 'ruby-mode-hook 'ruby-end-mode)

;; Hooks for Auto Complete minor mode
(add-hook 'emacs-lisp-mode-hook 'auto-complete-mode)
(add-hook 'html-mode-hook 'auto-complete-mode)
(add-hook 'ruby-mode-hook 'auto-complete-mode)
(add-hook 'css-mode-hook 'auto-complete-mode)
(add-hook 'sass-mode-hook 'auto-complete-mode)
(add-hook 'haml-mode-hook 'auto-complete-mode)
(add-hook 'yaml-mode-hook 'auto-complete-mode)

;; Turning on subword-mode
;; It can detect subwords in camelcase
(global-subword-mode 1)

;; Adding Vendor Padh (no elpa files)
(add-to-list 'load-path "~/.emacs.d/vendor")

;; Control-lock
;; Require the code
(require 'control-lock)
;; Make C-z turn on control lock
(control-lock-keys)

;; My macros
;; Kill current word
(fset 'kill-current-word
   [?\M-b ?\C-  ?\M-f ?\C-w])

(global-set-key (kbd "M-d") 'kill-current-word)
