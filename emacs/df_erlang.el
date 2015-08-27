(setq erl-top (getenv "ERL_TOP"))
(setq erl-tools (getenv "ERL_TOOLS"))
(setq load-path (cons (concat erl-tools "/emacs") load-path))
(setq erlang-root-dir erl-top)
(setq exec-path (cons (concat erl-top "/bin") exec-path))
(require 'erlang-start)

(add-hook 'erlang-mode-hook
	  (lambda ()
            ;; when starting an Erlang shell in Emacs, the node name
            ;; by default should be "emacs"
            (setq inferior-erlang-machine-options '("-sname" "emacs"))
	    ;; add Erlang functions to an imenu menu
	    (imenu-add-to-menubar "imenu")
            ;; open erlang manual page for underlying function
            (local-set-key [f1] 'erlang-man-function)))
