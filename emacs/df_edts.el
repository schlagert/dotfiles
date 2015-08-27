(require 'edts-start)
(add-hook 'erlang-mode-hook
          (lambda ()
            ;; add edts who calls shortcut for erlang mode
            (local-set-key (kbd "C-M-h") 'edts-xref-who-calls)))
