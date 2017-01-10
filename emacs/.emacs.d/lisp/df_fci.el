(require 'fill-column-indicator)
(add-hook 'after-change-major-mode-hook 'fci-mode)
(setq fci-rule-color "lightgray")
(setq fci-rule-use-dashes 1)
