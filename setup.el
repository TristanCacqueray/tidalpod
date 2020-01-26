;; This file is used to install emacs packages during the container build
;;
;; setup package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; install packages
(dolist (package '(
                   ;; quality of life packages
                   use-package
                   ivy
                   counsel
                   swiper
                   anzu
                   company
                   smex
                   which-key
                   ;; languages
                   dhall-mode
                   haskell-mode
                   sclang-extensions
                   tidal
                   ))
  (unless (package-installed-p package)
    (package-install package)))
