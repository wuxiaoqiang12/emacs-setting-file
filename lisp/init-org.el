;; ___ _   _ ___ _____            ___  ____   ____ 
;;|_ _| \ | |_ _|_   _|          / _ \|  _ \ / ___|
;; | ||  \| || |  | |    _____  | | | | |_) | |  _ 
;; | || |\  || |  | |   |_____| | |_| |  _ <| |_| |
;;|___|_| \_|___| |_|            \___/|_| \_\\____|

(require 'org)

(setq org-src-fontify-natively t)

(setq org-agenda-files '("~/org"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gdt.org" "工作安排")
         "* TODO [#B] %?\n  %i\n"
         :empty-lines 1)))

(provide 'init-org)
