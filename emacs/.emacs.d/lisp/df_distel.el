(setq home (getenv "HOME"))
(setq load-path (cons (concat home "/.local/distel/elisp") load-path))
(require 'distel)
(distel-setup)
