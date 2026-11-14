;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(global-display-line-numbers-mode t)
 '(inhibit-startup-screen t)
 '(mac-command-modifier 'hyper)
 '(mac-option-modifier 'meta)
 '(mac-right-command-modifier 'meta)
 '(package-selected-packages '(auctex multiple-cursors naysayer-theme paredit))
 '(size-indication-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "ZedMono Nerd Font" :foundry "nil" :slant normal :weight medium :height 145 :width expanded)))))

(mac-toggle-tab-bar)

(require 'package)
(add-to-list 'package-archives '("melpa-releases" . "https://releases.melpa.org/packages/") t)

(load-theme 'naysayer t)

(set-frame-parameter nil 'alpha-background 60) ; For current frame
(add-to-list 'default-frame-alist '(alpha-background . 60)) ; For all new frames henceforth

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;; Command key bindings
(global-set-key (kbd "H-<up>") 'beginning-of-buffer)
(global-set-key (kbd "H-<down>") 'end-of-buffer)
(global-set-key (kbd "H-<left>") 'move-beginning-of-line)
(global-set-key (kbd "H-<right>") 'move-end-of-line)
;; (global-set-key (kbd "H-[") 'pop-global-mark)
(global-set-key (kbd "H-a") 'mark-whole-buffer)
(global-set-key (kbd "H-c") 'kill-ring-save)
(global-set-key (kbd "H-v") 'yank)
(global-set-key (kbd "H-/") 'comment-line)
(global-set-key (kbd "H-s") 'save-buffer)
(global-set-key (kbd "H-o") 'find-file)
(global-set-key (kbd "H-f") 'isearch-forward)
(global-set-key (kbd "H-r") 'replace-string)
(global-set-key (kbd "H-l") 'goto-line)
(global-set-key (kbd "H-S-d") 'duplicate-dwim)
;; (global-set-key (kbd "H-w") (lambda () (interactive) (delete-window)))
(global-set-key (kbd "H-w") 'kill-buffer-and-window)
(global-set-key (kbd "H-z") 'undo)
(global-set-key (kbd "H-,") 'customize)
(global-set-key (kbd "H-q") 'save-buffers-kill-terminal)

;; Control key bindings
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(setq treesit-language-source-alist
      '((bash "https://github.com/tree-sitter/tree-sitter-bash")
        (cmake "https://github.com/uyha/tree-sitter-cmake")
        (css "https://github.com/tree-sitter/tree-sitter-css")
        (elisp "https://github.com/Wilfred/tree-sitter-elisp")
        (go "https://github.com/tree-sitter/tree-sitter-go")
        (html "https://github.com/tree-sitter/tree-sitter-html")
        (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
        (json "https://github.com/tree-sitter/tree-sitter-json")
        (make "https://github.com/alemuller/tree-sitter-make")
        (markdown "https://github.com/ikatyang/tree-sitter-markdown")
        (python "https://github.com/tree-sitter/tree-sitter-python")
        (toml "https://github.com/tree-sitter/tree-sitter-toml")
        (tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")
        (typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
        (yaml "https://github.com/ikatyang/tree-sitter-yaml")))
