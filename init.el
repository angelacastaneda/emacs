(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; require use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; require gruvbox-theme
(unless (package-installed-p 'gruvbox-theme)
  (package-refresh-contents)
  (package-install 'gruvbox-theme))

;; alias for yes -> y no->n
(defalias 'yes-or-no-p 'y-or-n-p)

(defvar my-terminal-shell "/usr/bin/zsh")
(defadvice ansi-term (before force-bash)
  (interactive (list my-terminal-shell)))
(ad-activate 'ansi-term)

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

;; disable gui defaults
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t)

;; change more mini vars
(setq ring-bell-function 'ignore)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox-dark-hard))
 '(custom-safe-themes
   '("d445c7b530713eac282ecdeea07a8fa59692c83045bf84dd112dd738c7bcad1d" default))
 '(package-selected-packages '(gruvbox-theme which-key use-package bind-key)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "GOOG" :family "Noto Sans Mono")))))
