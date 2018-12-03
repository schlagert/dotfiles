(setq ivy-erlang-complete-enable-eldoc nil)
(setq ivy-erlang-complete-erlang-root erlang-root-dir)
(require 'ivy-erlang-complete)
(require 'company-erlang)

(add-hook 'erlang-mode-hook
          (lambda ()
            (ivy-erlang-complete-init)
            (company-erlang-init)
            (local-set-key [?\M-7] 'ivy-erlang-complete)))

;; automatic update completion data after save
(add-hook 'after-save-hook (lambda () (ivy-erlang-complete-reparse)))
