(setq home (getenv "HOME"))
(setq load-path (cons (concat home "/.local/emacs-nav") load-path))
(require 'nav)
(nav-disable-overeager-window-splitting)
(add-hook 'nav-mode-hook
	  (lambda ()
            (set-window-dedicated-p (selected-window) 't)))
