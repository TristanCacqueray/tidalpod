;; Adjust emacs defaults
(setq-default
   inhibit-startup-message t
   inhibit-startup-buffer-menu t
   inhibit-startup-screen t
   inhibit-startup-echo-area-message t
   initial-buffer-choice t
   initial-scratch-message nil
   create-lockfiles nil
   mouse-yank-at-point t
   eshell-hist-ignoredups t
   )
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-prettify-symbols-mode t)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-font-lock-mode t)
(electric-pair-mode 1)
(blink-cursor-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(global-hi-lock-mode 1)
(toggle-truncate-lines -1)
(prefer-coding-system 'utf-8-unix)

;; Configure packages
(use-package savehist
  :config
  (savehist-mode 1))
(use-package saveplace
  :config
  (setq save-place-file "~/.emacs.d/saveplace")
  (setq-default save-place t)
  (save-place-mode))
(use-package smex
  :defer t)
(use-package counsel
  :bind (("C-x C-f" . counsel-find-file)
         ("M-x"     . counsel-M-x))
  :config
  (counsel-mode 1))
(use-package swiper
  :bind (("M-s" . swiper)))
(use-package dhall-mode
  :mode "\\.dhall\\'"
  :config
  (setq
    dhall-format-arguments (\` ("--ascii"))
    dhall-use-header-line nil))
(use-package haskell-mode
  :config
  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload))
;; Dark theme
(load-theme 'wheatgrass)
