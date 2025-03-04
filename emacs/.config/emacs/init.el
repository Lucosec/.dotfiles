;; Initialize package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

; Set font and background's opacity
(add-to-list 'default-frame-alist '(font . "JetBrains Mono Nerd Font-14"))
(add-to-list 'default-frame-alist '(alpha-background . 85))

; Some minor tweaks
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(display-line-numbers-mode 0)

; Enable better mini-buffer
(use-package vertico
  :ensure t
  :custom
  (vertico-cycle t)
  :init
  (vertico-mode))
; Save history for the mini-buffer
(use-package savehist
  :init
  (savehist-mode))
; Make the mini-buffer more descriptive
(use-package marginalia
  :after vertico
  :ensure t
  :custom
  (marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-light nil))
  :init
  (marginalia-mode))

; Enable prettier org-mode presentation
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

; Load up the appropriate theme
(require 'catppuccin-theme)
(catppuccin-load-flavor 'mocha)

; Enable icons in dired
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

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
   '(all-the-icons all-the-icons-dired all-the-icons-nerd-fonts
		   catppuccin-theme evil evil-collection magit
		   marginalia org-bullets ox-hugo ox-report sudo-edit
		   vertico)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
