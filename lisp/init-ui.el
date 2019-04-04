(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(setq inhibit-splash-screen t)

(setq-default cursor-type 'bar)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(global-hl-line-mode t)

(spaceline-spacemacs-theme)

(setq winum-auto-setup-mode-line nil)
(winum-mode)

(autopair-global-mode)

(provide 'init-ui)
