;; Initialize package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

; Set font and background's opacity
(add-to-list 'default-frame-alist '(font . "JetBrains Mono Nerd Font-14"))
(add-to-list 'default-frame-alist '(alpha-background . 90))

; Some minor tweaks
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

; Enable padding
(use-package spacious-padding
  :ensure t
  :init
  (spacious-padding-mode))

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
; Enable magit
(use-package magit
  :ensure t)
;; Enable prettier org-mode presentation
(use-package org
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; Use customizable the Modus Themes
(use-package modus-themes
  :ensure t
  :config
  (setq modus-themes-italic-constructs t
	modus-themes-bold-constructs nil)
  (setq modus-vivendi-palette-overrides
	'(
	  ; fg common colors
	  (red             "#f38ba8")
	  (red-warmer      "#f38ba8")
	  (red-cooler      "#cba6f7")
	  (red-faint       "#f5e0dc")
	  (red-intense     "#f38ba8")
	  (green           "#a6e3a1")
	  (green-warmer    "#f9e2af")
	  (green-cooler    "#94e2d5")
	  (green-faint     "#b4befe")
	  (green-intense   "#a6e3a1")
	  (yellow          "#f9e2af")
	  (yellow-warmer   "#fab387")
	  (yellow-cooler   "#a6e3a1")
	  (yellow-faint    "#a6e3a1")
	  (yellow-intense  "#f9e2af")
	  (blue            "#89b4fa")
	  (blue-warmer     "#89b4fa")
	  (blue-cooler     "#b4befe")
	  (blue-faint      "#94e2d5")
	  (blue-intense    "#89b4fa")
	  (magenta         "#cba6f7")
	  (magenta-warmer  "#f5c2e7")
	  (magenta-cooler  "#f38ba8")
	  (magenta-faint   "#eba0ac")
	  (magenta-intense "#cba6f7")
	  (cyan            "#94e2d5")
	  (cyan-warmer     "#a6e3a1")
	  (cyan-cooler     "#89b4fa")
	  (cyan-faint      "#b4befe")
	  (cyan-intense    "#94e2d5")
	  ; bg common colors
	  (bg-red-intense     "#6c7086")
	  (bg-green-intense   "#6c7086")
	  (bg-yellow-intense  "#6c7086")
	  (bg-blue-intense    "#6c7086")
	  (bg-magenta-intense "#6c7086")
	  (bg-cyan-intense    "#6c7086")

	  (bg-red-subtle      "#585b70")
	  (bg-green-subtle    "#585b70")
	  (bg-yellow-subtle   "#585b70")
	  (bg-blue-subtle     "#585b70")
	  (bg-magenta-subtle  "#585b70")
	  (bg-cyan-subtle     "#585b70")

	  (bg-red-nuanced     "#45475a")
	  (bg-green-nuanced   "#45475a")
	  (bg-yellow-nuanced  "#45475a")
	  (bg-blue-nuanced    "#45475a")
	  (bg-magenta-nuanced "#45475a")
	  (bg-cyan-nuanced    "#45475a")


	  ;; basic values
	  (bg-main          "#1e1e2e")
	  (bg-dim           "#181825")
	  (fg-main          "#cdd6f4")
	  (fg-dim           "#989898")
	  (fg-alt           "#b4befe")
	  (bg-active        "#45475a")
	  (bg-inactive      "#181825")
	  (border           "#1e1e2e")

	  ;; Special purpose
	  (bg-mode-line-active "#181825")
	  (fg-mode-line-active "#7f849c")
	  (border-mode-line-active "#181825")
	  (bg-mode-line-inactive "#181825")
	  (fg-mode-line-inactive "#45475a")
	  (border-mode-line-inactive "#11111b")
	  (modeline-err "#f38ba8")
	  (modeline-warning "#f9e2af")
	  (modeline-info "#a6e3a1")

	  (bg-completion       "#45475a")
	  (bg-hover            "#313244")
 	  (bg-hover-secondary  "#313244")
	  (bg-hl-line          "#45475a")
	  (bg-region           "#313244")
	  (fg-region           "#a6adc8")

	  (bg-char-0 "#9399b2")
	  (bg-char-1 "#7f849c")
	  (bg-char-2 "#6c7086")

	  (bg-tab-bar      "#585b70")
	  (bg-tab-current  "#313244")
	  (bg-tab-other    "#45475a")
	  
	  )
	)

  (setq modus-operandi-palette-overrides
	'(
	  ; fg common colors
	  (red             "#d20f39")
	  (red-warmer      "#d20f39")
	  (red-cooler      "#8839ef")
	  (red-faint       "#dc8a78")
	  (red-intense     "#d20f39")
	  (green           "#40a02b")
	  (green-warmer    "#df8e1d")
	  (green-cooler    "#179299")
	  (green-faint     "#7287fd")
	  (green-intense   "#40a02b")
	  (yellow          "#df8e1d")
	  (yellow-warmer   "#fe640b")
	  (yellow-cooler   "#40a02b")
	  (yellow-faint    "#40a02b")
	  (yellow-intense  "#df8e1d")
	  (blue            "#1e66f5")
	  (blue-warmer     "#1e66f5")
	  (blue-cooler     "#7287fd")
	  (blue-faint      "#179299")
	  (blue-intense    "#1e66f5")
	  (magenta         "#8839ef")
	  (magenta-warmer  "#ea76cb")
	  (magenta-cooler  "#d20f39")
	  (magenta-faint   "#d20f39")
	  (magenta-intense "#8839ef")
	  (cyan            "#179299")
	  (cyan-warmer     "#40a02b")
	  (cyan-cooler     "#1e66f5")
	  (cyan-faint      "#7287fd")
	  (cyan-intense    "#179299")

					; bg common colors
	  (bg-red-intense     "#ccd0da")
	  (bg-green-intense   "#ccd0da")
	  (bg-yellow-intense  "#ccd0da")
	  (bg-blue-intense    "#ccd0da")
	  (bg-magenta-intense "#ccd0da")
	  (bg-cyan-intense    "#ccd0da")

	  (bg-red-subtle      "#bcc0cc")
	  (bg-green-subtle    "#bcc0cc")
	  (bg-yellow-subtle   "#bcc0cc")
	  (bg-blue-subtle     "#bcc0cc")
	  (bg-magenta-subtle  "#bcc0cc")
	  (bg-cyan-subtle     "#bcc0cc")

	  (bg-red-nuanced     "#acb0be")
	  (bg-green-nuanced   "#acb0be")
	  (bg-yellow-nuanced  "#acb0be")
	  (bg-blue-nuanced    "#acb0be")
	  (bg-magenta-nuanced "#acb0be")
	  (bg-cyan-nuanced    "#acb0be")

	  ;; basic values
	  (bg-main          "#eff1f5")
	  (bg-dim           "#e6e9ef")
	  (fg-main          "#4c4f69")
	  (fg-dim           "#9ca0b0")
	  (fg-alt           "#7287fd")
	  (bg-active        "#acb0be")
	  (bg-inactive      "#e6e9ef")
	  (border           "#eff1f5")

	  ;; Special purpose
	  (bg-mode-line-active "#ccd0da")
	  (fg-mode-line-active "#6c6f85")
	  (border-mode-line-active "#ccd0da")
	  (bg-mode-line-inactive "#e6e9ef")
	  (fg-mode-line-inactive "#acb0be")
	  (border-mode-line-inactive "#dce0e8")
	  (modeline-err "#d20f39")
	  (modeline-warning "#df8e1d")
	  (modeline-info "#40a02b")

	  (bg-completion       "#acb0be")
	  (bg-hover            "#dce0e8")
	  (bg-hover-secondary  "#dce0e8")
	  (bg-hl-line          "#acb0be")
	  (bg-region           "#dce0e8")
	  (fg-region           "#6c6f85")

	  (bg-char-0 "#9ca0b0")
	  (bg-char-1 "#6c6f85")
	  (bg-char-2 "#5c5f77")

	  (bg-tab-bar      "#bcc0cc")
	  (bg-tab-current  "#dce0e8")
	  (bg-tab-other    "#acb0be")
	  )
	)

  (load-theme 'modus-vivendi t) 
  (define-key global-map (kbd "<f5>") #'modus-themes-toggle))

(use-package all-the-icons-dired
  :ensure t
  :config
  ;; Add icons for dired
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
