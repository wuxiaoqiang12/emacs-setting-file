;; ___ _   _ ___ _____           ____  _____ _____ _____ _____ ____          
;;|_ _| \ | |_ _|_   _|         | __ )| ____|_   _|_   _| ____|  _ \         
;; | ||  \| || |  | |    _____  |  _ \|  _|   | |   | | |  _| | |_) |  _____ 
;; | || |\  || |  | |   |_____| | |_) | |___  | |   | | | |___|  _ <  |_____|
;;|___|_| \_|___| |_|           |____/|_____| |_|   |_| |_____|_| \_\        
                                                                           
;; ____  _____ _____ _   _   _ _   _____ ____  
;;|  _ \| ____|  ___/ \ | | | | | |_   _/ ___| 
;;| | | |  _| | |_ / _ \| | | | |   | | \___ \ 
;;| |_| | |___|  _/ ___ \ |_| | |___| |  ___) |
;;|____/|_____|_|/_/   \_\___/|_____|_| |____/

(setq ring-bell-function 'ignore)

(global-auto-revert-mode t)
(global-linum-mode t)

(recentf-mode 1)
(setq recentf-max-menu-items 25)

;;(add-hook 'emacs-lisp-mode-hook show-paren-mode)

(delete-selection-mode t)

(setq make-backup-files nil)

(fset 'yes-or-no-p 'y-or-n-p)

(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indent selected region."))
      (progn
        (indent-buffer)
        (message "Indent buffer.")))))

(setq hippie-expand-try-function-list '(try-expand-debbrev
                                        try-expand-debbrev-all-buffers
                                        try-expand-debbrev-from-kill
                                        try-complete-file-name-partially
                                        try-complete-file-name
                                        try-expand-all-abbrevs
                                        try-expand-list
                                        try-expand-line
                                        try-complete-lisp-symbol-partially
                                        try-complete-lisp-symbol))

(put 'dired-find-alternate-file 'disabled nil)
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)

(setq dired-dwim-target t)
;;(sp-local-pair '(emacs-lisp-mode lisp-interaction-mode) "'" nil :actions nil)
(require 'dired-x)

;;dwim is do what i mean.
(defun occur-dwim ()
  "Call `occur' with a sane default."
  (interactive)
  (push (if (region-active-p)
            (buffer-substring-no-properties
             (region-beginning)
             (region-end))
          (let ((sym (thing-at-point 'symbol)))
            (when (stringp sym)
              (regexp-quote sym))))
        regexp-history)
  (call-interactively 'occur))
(global-set-key (kbd "M-s o") 'occur-dwim)

(set-language-environment "UTF-8")

(provide 'init-better-defaults)
