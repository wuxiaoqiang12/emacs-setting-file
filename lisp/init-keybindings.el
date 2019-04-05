;; ___ _   _ ___ _____         
;;|_ _| \ | |_ _|_   _|        
;; | ||  \| || |  | |    _____ 
;; | || |\  || |  | |   |_____|
;;|___|_| \_|___| |_|          
                             
;; _  _________   ______ ___ _   _ ____ ___ _   _  ____ ____  
;;| |/ / ____\ \ / / __ )_ _| \ | |  _ \_ _| \ | |/ ___/ ___| 
;;| ' /|  _|  \ V /|  _ \| ||  \| | | | | ||  \| | |  _\___ \ 
;;| . \| |___  | | | |_) | || |\  | |_| | || |\  | |_| |___) |
;;|_|\_\_____| |_| |____/___|_| \_|____/___|_| \_|\____|____/


(global-set-key (kbd "<f2>") 'open-my-init-file)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;; r refers to remeber
(global-set-key (kbd "C-c r") 'org-capture)

(global-set-key (kbd "C-c a") 'org-agenda)
;; Enable Cache
(setq url-automatic-caching t)

;; 延迟加载
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

(global-set-key (kbd "C-w") 'backward-kill-word)

(provide 'init-keybindings)
