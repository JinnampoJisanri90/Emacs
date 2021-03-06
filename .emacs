(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(auto-save-default nil)
 '(browse-url-browser-function (quote browse-url-chrome))
 '(cua-enable-cua-keys nil)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (tango)))
 '(delete-selection-mode t)
 '(desktop-save-mode nil)
 '(ediff-diff-options "-w")
 '(erc-nick "koowgnojeel")
 '(erc-port 6666)
 '(erc-prompt-for-password nil)
 '(erc-server "irc.libera.chat")
 '(erc-server-coding-system (quote utf-8))
 '(fill-prefix "")
 '(indent-tabs-mode nil)
 '(make-backup-files nil)
 '(package-selected-packages (quote (xclip company graphviz-dot-mode ## tuareg)))
 '(select-enable-primary t)
 '(show-paren-mode t)
 '(tab-width 4)
 '(truncate-lines t)
 '(xclip-mode nil))

;; aidalgol#emacs -- Enable colour emoji. 😄 🎉
;; sudo apt-get install -y fonts-symbola
(set-fontset-font t 'symbol "Symbola" nil 'append)

(require 'package)
(add-to-list 'package-archives
    '("melpa" . "https://melpa.org/packages/")
)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; https://github.com/ppareit/graphviz-dot-mode
;; sudo yum install graphviz
;; M_x package-install RET company RET
(use-package graphviz-dot-mode
             :ensure t
             :config(setq graphviz-dot-indent-width 4))
;; (use-package company-graphviz-dot)

;; To filter out
;;     M-x keep-lines with argument ^[A-Z ]+$

;; How to make Emacs read buffer from stdin on start?
;;     emacs --insert <(echo 123)

