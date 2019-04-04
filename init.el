;; ____   _    ____ _  __    _    ____ _____         
;;|  _ \ / \  / ___| |/ /   / \  / ___| ____|        
;;| |_) / _ \| |   | ' /   / _ \| |  _|  _|    _____ 
;;|  __/ ___ \ |___| . \  / ___ \ |_| | |___  |_____|
;;|_| /_/   \_\____|_|\_\/_/   \_\____|_____|        
                                                   
;; __  __    _    _   _    _    ____ _____ __  __ _____ _   _ _____ 
;;|  \/  |  / \  | \ | |  / \  / ___| ____|  \/  | ____| \ | |_   _|
;;| |\/| | / _ \ |  \| | / _ \| |  _|  _| | |\/| |  _| |  \| | | |  
;;| |  | |/ ___ \| |\  |/ ___ \ |_| | |___| |  | | |___| |\  | | |  
;;|_|  |_/_/   \_\_| \_/_/   \_\____|_____|_|  |_|_____|_| \_| |_|

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/themes")
;;(add-to-list 'load-path "~/.emacs.d/lisp/themes")
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))


(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-org)
(require 'init-keybindings)


(setq enable-recursive-minibuffers t)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)
