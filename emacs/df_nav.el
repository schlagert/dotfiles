(defun toggle-current-window-dedication ()
  (interactive)
  (let* ((window    (selected-window))
	 (dedicated (window-dedicated-p window)))
    (set-window-dedicated-p window (not dedicated))
    (message "Window %sdedicated to %s"
	     (if dedicated "no longer " "")
	     (buffer-name))))
(global-set-key [f9] 'toggle-current-window-dedication)

(setq home (getenv "HOME"))
(setq load-path (cons (concat home "/local/emacs-nav") load-path))
(require 'nav)
(add-hook 'nav-mode-hook
	  (lambda ()
            (set-window-dedicated-p (selected-window) 't)))
