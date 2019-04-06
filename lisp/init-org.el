;; ___ _   _ ___ _____            ___  ____   ____ 
;;|_ _| \ | |_ _|_   _|          / _ \|  _ \ / ___|
;; | ||  \| || |  | |    _____  | | | | |_) | |  _ 
;; | || |\  || |  | |   |_____| | |_| |  _ <| |_| |
;;|___|_| \_|___| |_|            \___/|_| \_\\____|

(require 'org)

(setq org-src-fontify-natively t)

(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
        (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)")))

(setq org-log-done 'time)
(setq org-log-into-drawer t)
(setq org-log-state-notes-insert-after-drawers nil)

(setq org-agenda-files '("~/org"))

(setq org-capture-templates
      `(("i" "inbox" entry (file "~/org/gtd/inbox.org")
         "* TODO %?")
        ("p" "paper" entry (file "~/org/papers/papers.org")
         "* TODO %(jethro/trim-citation-title \"%:title\")\n%a" :immediate-finish t)
        ("e" "email" entry (file+headline "~/org/gtd/emails.org" "Emails")
         "* TODO [#A] Reply: %a :@home:@school:" :immediate-finish t)
        ("l" "link" entry (file "~/org/gtd/inbox.org")
         "* TODO %(org-cliplink-capture)" :immediate-finish t)
        ("z" "elfeed-link" entry (file "~/org/gtd/inbox.org")
         "* TODO %a\n" :immediate-finish t)
        ("w" "Weekly Review" entry (file+olp+datetree "~/org/gtd/reviews.org")
         (file "~/org/gtd/templates/weekly_review.org"))
        ("s" "Snippet" entry (file "~/org/deft/capture.org")
         "* Snippet %<%Y-%m-%d %H:%M>\n%?")))

;; (setq org-capture-templates
;;       '(("t" "Todo" entry (file+headline "~/org/gtd.org" "工作安排")
;;          "* TODO [#B] %?\n  %i\n"
;;          :empty-lines 1)))

(provide 'init-org)
