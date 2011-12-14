;;; -*- lexical-binding: t -*-

;; Solarized theme
(add-to-list 'load-path (concat (file-name-directory load-file-name) "emacs-color-theme-solarized"))

(require 'solarized-dark-theme)

(require 'outlookedit)

;; Umlaute
(defun make-inserter (ch)
  #'(lambda ()
      (interactive)
      (insert (make-char 'latin-iso8859-15 ch))))

(global-set-key (kbd "M-u") (make-inserter #xfc))
(global-set-key (kbd "M-U") (make-inserter #xdc))
(global-set-key (kbd "M-a") (make-inserter #xe4))
(global-set-key (kbd "M-A") (make-inserter #xc4))
(global-set-key (kbd "M-o") (make-inserter #xf6))
(global-set-key (kbd "M-O") (make-inserter #xd6))
(global-set-key (kbd "M-i") (make-inserter #xdf))

;; VB
(require 'visual-basic-mode)

;; Groovy
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

(add-hook 'groovy-mode-hook
          '(lambda ()
             (require 'groovy-electric)
             (groovy-electric-mode)))
