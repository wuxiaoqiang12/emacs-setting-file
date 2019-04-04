;; ___ _   _ ___ _____      ____   _    ____ _  __    _    ____ _____ ____
;;|_ _| \ | |_ _|_   _|    |  _ \ / \  / ___| |/ /   / \  / ___| ____/ ___| 
;; | ||  \| || |  | | _____| |_) / _ \| |   | ' /   / _ \| |  _|  _| \___ \ 
;; | || |\  || |  | | _____|  __/ ___ \ |___| . \  / ___ \ |_| | |___ ___) |
;;|___|_| \_|___| |_|      |_| /_/   \_\____|_|\_\/_/   \_\____|_____|____/ 

(require 'cl)

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives
               (cons "melpa" (concat proto "://melpa.org/packages/")) t))
(package-initialize)

;;add whatever packages you want here
(defvar jon/packages '(
		       company
		       company-coq
		       proof-general
		       monokai-theme
		       hungry-delete
		       swiper
		       counsel
		       ;;smartparens
		       popwin
		       iedit
		       ;;powerline
		       spaceline
		       winum
		       flycheck
		       autopair
		       youdao-dictionary
		       highlight-parentheses
		       ) "Default packages")

(setq package-selected-packages jon/packages)

(defun jon/packages-installed-p ()
  (loop for pkg in jon/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (jon/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg jon/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(global-hungry-delete-mode)

;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
;;(smartparens-global-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

(global-company-mode t)

(load-theme 'monokai t)

(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'popwin)
(popwin-mode t)

;; Load company-coq when opening Coq files
(add-hook 'coq-mode-hook #'company-coq-mode)

;; Enable Chinese word segmentation support (支持中文分词)
(setq youdao-dictionary-use-chinese-word-segmentation t)

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
