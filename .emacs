; (package initialize)


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
; (package-initialize)

 (require 'package)
; (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
; (package initialize)

; (custom-set-variables 
;   '(ansi-color-names-vector
; 	 ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
;   '(custom-enabled-themes (quote (manoj-dark)))
;   '(package-selected-packages (quote (projectile clojure-mode-extra-font-locking cider))))
; (custom-set-faces )
; (add-to-list 'exec-path "/usr/local/bin")
(set-keyboard-coding-system nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" default)))
 '(package-selected-packages
   (quote
    (expand-region multi-term ac-etags airline-themes ac-php js2-mode color-theme-sanityinc-tomorrow jedi yasnippet linum-relative auto-complete chess ## poker))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; If you want to use last tagged version
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)


(setq show-paren-style 'expression)
(show-paren-mode 2)

(menu-bar-mode -1)
(tool-bar-mode -1)


(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq auto-save-default         nil) ; Don't want any auto saving


; (add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/elpa")
; (add-to-list 'load-path "~/EmacsCasts/episode03/")

;; http://code.google.com/p/dea/source/browse/trunk/my-lisps/linum%2B.el
; (require 'linum+)
; (setq linum-format "%d ")
; (global-linum-mode 1)

(require 'linum-relative)
(linum-on)
(global-linum-mode t)
(setq linum-format "%d ")
; (setq-default left-fringe-width  10)
; (setq-default right-fringe-width 10)
; (set-face-attribute 'fringe nil :background "black")
; (setq linum-format "%d")
;; use customized linum-format: add a addition space after the line number                                                                      
; (setq linum-format (lambda (line) (propertize (format (let ((w (length (number-to-string (count-lines (point-min) (point-max)))))) (concat "%" \
; (number-to-string w) "d ")) line) 'face 'linum)))
; (custom-set-variables '(linum-format 'dynamic))
; (custom-set-variables '(linum-format (quote "%7d")))

;; built-in
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)


;; built-in
(require 'bs)
(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))

(global-set-key (kbd "<f2>") 'bs-show)


;; http://www.emacswiki.org/emacs/AutoComplete
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-1.5.1/auto-complete")
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.5.1/dict")

(setq ac-use-menu-map t)
;; Default settings
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)


(define-key ac-completing-map "\t" 'ac-complete)
(define-key ac-completing-map "\r" nil)


; ;; http://www.emacswiki.org/emacs/SrSpeedbar
(require 'sr-speedbar)
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)


;; http://www.emacswiki.org/emacs/Yasnippet
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-0.12.2/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
(yas/load-directory "~/.emacs.d/elpa/yasnippet-0.12.2/snippets")

;; http://www.emacswiki.org/emacs/ColorTheme
;; Tools -> Color themes
; (add-to-list 'load-path "~/EmacsCasts/episode03/color-theme/")
; (require 'color-theme)
; (color-theme-initialize)
(setq color-theme-is-global t)

; (color-theme-robin-hood)
; (color-theme-classic)
; (color-theme-select)

;; Options -> Set default font
; (add-to-list 'default-frame-alist '(font . "Consolas-18"))
; (set-default-font "Consolas-18")



(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(load-theme 'hickey t)
; (load-theme 'junio t)


(require 'color-theme-sanityinc-tomorrow)

;for python

; (elpy-enable)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)



;for js

; (add-hook 'js-mode-hook 'js2-minor-mode)
; (add-hook 'js2-mode-hook 'ac-js2-mode)



; for php

(add-hook 'php-mode-hook
            '(lambda ()
               (auto-complete-mode t)
               (require 'ac-php)
               (setq ac-sources  '(ac-source-php ) )
               (yas-global-mode 1)

               (ac-php-core-eldoc-setup ) ;; enable eldoc
               (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)   ;goto define
               (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back)    ;go back
               ))


;powerline

(add-to-list 'load-path "~/.emacs.d/elpa/powerline/")
(require 'powerline)
(powerline-default-theme)
; (powerline-vim-theme)


(require 'airline-themes)
(load-theme 'airline-base16-gui-dark)

; autopair

(add-to-list 'load-path "~/.emacs.d/elpa/autopair") ;; comment if autopair.el is in standard load path
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers





(eval-after-load "etags"
  '(progn
      (ac-etags-setup)))

(add-hook 'c-mode-common-hook 'ac-etags-ac-setup)
(add-hook 'ruby-mode-common-hook 'ac-etags-ac-setup)

(setq python-shell-interpreter "/usr/local/bin/python3")


; multiterm


 (require 'multi-term)

(setq multi-term-program "/bin/zsh")



; vim ci

(require 'expand-region)
(global-set-key (kbd "C-\\") 'er/expand-region)
(delete-selection-mode 1)
(add-to-list 'load-path "~/.emacs.d/elpa/change-inner.el") ;; comment if autopair.el is in standard load path
(require 'change-inner)
(global-set-key (kbd "M-i") 'change-inner)
(global-set-key (kbd "M-o") 'change-outer)
