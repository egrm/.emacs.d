;; initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("gnu" . "https://elpa.gnu.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

;;install use package if it's not installed
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; enable use-package
(require 'use-package)
(setq use-package-always-ensure t)


;; evil mode
(setq evil-want-C-u-scroll t)

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(setq select-enable-clipboard t)
(setq select-enable-primary t)

;; font
(set-face-attribute 'default nil :font "Consolas-12")

;; enable number lines
(global-display-line-numbers-mode t)

;; show matching parens
(show-paren-mode 1)

;;disable toolbar, menu, scrollbar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package compat
  :ensure t)
(use-package magit
  :ensure t)

(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))


;;Quick command to open init.el
(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))


(global-set-key (kbd "C-c I") 'open-init-file)

(global-set-key (kbd "C-c R") 'kill-emacs)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(wheatgrass)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
