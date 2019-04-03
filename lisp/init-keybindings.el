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

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(global-set-key (kbd "<f2>") 'open-my-init-file)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

(global-set-key (kbd "s-/") 'hippie-expand)

;; 主动加载 Dired Mode
;; (require 'dired)
;; (defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; 延迟加载
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(provide 'init-keybindings)
