(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; disable gui defaults
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
