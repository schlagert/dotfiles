(setq home (getenv "HOME"))
(setq load-path (cons (concat home "/.local/distel/elisp") load-path))
(require 'distel)
(distel-setup)

;; http://bob.ippoli.to/archives/2007/03/16/distel-and-erlang-mode-for-emacs-on-mac-os-x/
(defvar inferior-erlang-prompt-timeout t)
(setq inferior-erlang-machine-options '("-sname" "emacs"))
(setq erl-nodename-cache
      (make-symbol
       (concat
        "emacs@"
        (car (split-string (shell-command-to-string "hostname"))))))

(setq load-path (cons (concat home "/.local/distel-completion") load-path))
(require 'company-distel)

(setq company-distel-popup-help t)
(setq company-distel-popup-height 30)
(setq distel-completion-get-doc-from-internet t)

(add-hook 'erlang-mode-hook
          (lambda ()
            (setq company-backends '(company-distel))))
