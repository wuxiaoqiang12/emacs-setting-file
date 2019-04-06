;; ___ _   _ ___ _____      ____   _    ____ _  __    _    ____ _____ ____
;;|_ _| \ | |_ _|_   _|    |  _ \ / \  / ___| |/ /   / \  / ___| ____/ ___| 
;; | ||  \| || |  | | _____| |_) / _ \| |   | ' /   / _ \| |  _|  _| \___ \ 
;; | || |\  || |  | | _____|  __/ ___ \ |___| . \  / ___ \ |_| | |___ ___) |
;;|___|_| \_|___| |_|      |_| /_/   \_\____|_|\_\/_/   \_\____|_____|____/ 


(use-package hungry-delete
  :ensure t
  :config
  (global-hungry-delete-mode))

(use-package ivy
  :ensure t
  :bind ("C-c C-r" . 'ivy-resume)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t))

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0.08)
  (setq company-show-numbers t)
  (setq company-tooltip-limit 10)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  ;; invert the navigation direction if the the completion popup-isearch-match
  ;; is displayed on top (happens near the bottom of windows)
  (setq company-tooltip-flip-when-above t)
  (global-company-mode))

(use-package company-coq
  :ensure t
  :config
  (add-hook 'coq-mode-hook #'company-coq-mode))

;; (use-package monokai-theme
;;   :ensure t
;;   :config
;;   (load-theme 'monokai t))

(load-theme 'zenburn t)

(use-package flycheck
  :ensure t
  :config
  (add-hook 'coq-mode-hook 'flycheck-mode))

(use-package popwin
  :ensure t
  :config
  (popwin-mode t))

(use-package youdao-dictionary
  :ensure t
  :bind ("C-c y" . 'youdao-dictionary-search-at-point)
  :config
  (setq youdao-dictionary-use-chinese-word-segmentation t))

(use-package org-pomodoro
  :ensure t)

(use-package yasnippet
  :ensure t
  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook #'yas-minor-mode))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package swiper
  :ensure t
  :bind ("\C-s" . 'swiper))

(use-package counsel
  :ensure t
  :config
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (global-set-key (kbd "<f1> f") 'counsel-describe-function)
  (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
  (global-set-key (kbd "<f1> l") 'counsel-find-library)
  (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
  (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
  (global-set-key (kbd "C-c g") 'counsel-git)
  (global-set-key (kbd "C-c j") 'counsel-git-grep)
  (global-set-key (kbd "C-c a") 'counsel-ag)
  (global-set-key (kbd "C-x l") 'counsel-locate)
  (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history))

(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))

(use-package helm-ag
  :ensure t
  :bind ("C-c p s" . 'helm-do-ag-project-root))

(use-package iedit
  :ensure t
  :bind ( "M-s e" . 'iedit-mode))

(use-package winum
  :init (setq winum-keymap
    (let ((map (make-sparse-keymap)))
      (define-key map (kbd "C-`") 'winum-select-window-by-number)
      (define-key map (kbd "C-²") 'winum-select-window-by-number)
      (define-key map (kbd "M-0") 'winum-select-window-0-or-10)
      (define-key map (kbd "M-1") 'winum-select-window-1)
      (define-key map (kbd "M-2") 'winum-select-window-2)
      (define-key map (kbd "M-3") 'winum-select-window-3)
      (define-key map (kbd "M-4") 'winum-select-window-4)
      (define-key map (kbd "M-5") 'winum-select-window-5)
      (define-key map (kbd "M-6") 'winum-select-window-6)
      (define-key map (kbd "M-7") 'winum-select-window-7)
      (define-key map (kbd "M-8") 'winum-select-window-8)
      map))
  :ensure t
  :config
  (setq winum-auto-setup-mode-line nil)
  (winum-mode))

(use-package spaceline
  :ensure t
  :config
  (spaceline-spacemacs-theme))

(use-package proof-general
  :ensure t)

(use-package autopair
  :ensure t
  :config
  (autopair-global-mode)
  )

(cua-mode t)
(setq-default cua-auto-tabify-rectangles nil)
(transient-mark-mode 1)
(setq-default cua-keep-region-after-copy t)

(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

(provide 'init-packages)
