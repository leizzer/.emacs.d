(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(ido-mode (quote both) nil (ido))
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


