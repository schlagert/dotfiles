;; packages
(require 'package)
(add-to-list 'package-archives
             '("elpa" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; comment the following lines after first launch
(package-refresh-contents)
(package-install 'erlang)
(package-install 'edts)
(package-install 'haskell-mode)
(package-install 'fill-column-indicator)

;; load extensions
(setq load-path (cons "~/.emacs.d/lisp/" load-path))

;; erlang major mode and enhancements
(load "df_erlang.el")
(load "df_distel.el")
;;(load "df_edts.el")

;; basic haskell-mode
(load "df_haskell.el")

;; fill-column-indicator
(load "df_fci.el")

;; emacs-nav
(load "df_nav.el")

;; custom settings
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(edts-complete-inhibit t)
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(show-paren-mode t))
(setq-default indent-tabs-mode nil)
(set-default 'fill-column 80)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(add-hook 'before-save-hook (function delete-trailing-whitespace))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'adwaita)
