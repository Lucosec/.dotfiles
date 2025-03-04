(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(ido-mode)
(ido-everywhere)

(add-to-list 'default-frame-alist '(font . "JetBrains Mono Nerd Font-14"))
(add-to-list 'default-frame-alist '(alpha-background . 85))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(require 'catppuccin-theme)
(catppuccin-load-flavor 'mocha)

(require 'smex)
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(catppuccin))
 '(custom-safe-themes
   '("7bea8c8136b95e40a3def71cc2953e29d2553078ba1730d8262f1dccc586fbab"
     default))
 '(package-selected-packages
   '(catppuccin-theme evil magit org-bullets ox-hugo ox-report smex
		      sudo-edit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Map Caps Lock to Ctrl
(setq x-alt-keysym 'meta)
(when (eq system-type 'gnu/linux)
  (shell-command "setxkbmap -option ctrl:nocaps"))

