(setq erl-top (getenv "ERL_TOP"))
(setq erl-tools (getenv "ERL_TOOLS"))
(setq load-path (cons (concat erl-tools "/emacs") load-path))
(setq erlang-root-dir erl-top)
(setq exec-path (cons (concat erl-top "/bin") exec-path))
(require 'erlang-start)

(defun erlang-align-case-clauses (start end)
  "Align the arrows of all case clauses in a region."
  (interactive "r")
  (align-regexp start end "\\(\\s-*\\)->"))

(add-hook 'erlang-mode-hook
	  (lambda ()
	    ;; add Erlang functions to an imenu menu
	    (imenu-add-to-menubar "imenu")
            ;; align selected region to ->
            (local-set-key [?\C-c ?\C-f] 'erlang-align-case-clauses)))
