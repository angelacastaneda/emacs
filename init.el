;; straight.el bootstrap
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; add melpa still
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/"))

(org-babel-load-file (expand-file-name "~/.config/emacs/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(notmuch-saved-searches
    '((:name "inbox" :query "tag:inbox" :key "i")
       (:name "unread" :query "tag:unread" :key "u")
       (:name "flagged" :query "tag:flagged" :key "f")
       (:name "sent" :query "tag:sent" :key "t")
       (:name "drafts" :query "tag:draft" :key "d")
       (:name "all mail" :query "*" :key "a")
       (:name "to-delete" :query "tag:deleted")))
 '(package-selected-packages
   '(racket-mode sicp orderless git-gutter-fringe git-gutter vertico marginalia org-roam magit diminish dashboard rainbow-delimiters rainbow-mode avy ido-vertical-mode smex undo-fu which-key use-package bind-key)))
