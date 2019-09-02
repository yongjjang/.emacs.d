(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

;; Full Secreen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;; menu, tool, scroll-bar disable
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(show-paren-mode 1)


;; init usage screen off
(setq inhibit-startup-screen t)




(global-set-key (kbd "<s-return>") 'toggle-frame-fullscreen)




;; org-mode start
(global-font-lock-mode t)
(transient-mark-mode 1)

(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

(global-set-key "\C-ca" 'org-agenda)



;; org-mode end

(global-linum-mode 1)


(setq make-backup-files nil)
(setq delete-selection-mode t)

(setq package-enable-at-startup nil)
(package-initialize)

(setq custom-file "~/.emacs.d/themes/dracula-theme.el")
(load custom-file)


