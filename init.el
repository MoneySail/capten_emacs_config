;; 设置加载路径
(add-to-list 'load-path "~/.emacs.d/lisp")


;; 加载基本配置文件
(load "basic.el")

;; 加载插件源
(package-initialize)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdown-mode elpy js2-mode switch-window find-file-in-project git-gutter evil magit ace-jump-mode xcscope helm auto-complete flycheck)))
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; 配置elpy
(elpy-enable)

;; 配置markdown-mode

;; 配置color-theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-calm-forest)

;; 配置helm
(add-to-list 'load-path "~/.emacs.d/elpa/helm-20161010.1043")
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-l") 'helm-locate)
;; 配置xcscope
(require 'xcscope)
(setq cscope-do-not-update-database t)

;; 配置org-mode
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;; 配置find-file-in-project
(global-set-key (kbd "C-x f") 'find-file-in-project)

;; 配置flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; 配置emmet
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

;; 配置yasnppet
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet")
(setq yas-snippet-dirs
      '(
	"~/.emacs.d/snippets"                ;; capten personal collection
     	"~/.emacs.d/elpa/yasnippet/snippets" ;; the defualt collection
	"~/.emacs.d/elpa/yasnippet/yasmate"  ;; the yasmate collection
	        ))
(require 'yasnippet)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;; 配置auto-complete
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete/dict")
(ac-config-default)

;; 配置go-mode
(require 'go-mode-autoloads)

;; 配置ace-jump
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;; 配置js-2 mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; 配置php-mode
(require 'php-mode)
;; 配置webmode
(require 'web-mode)(add-to-list 'auto-mode-alist '("//.html?//'" . web-mode))
(defun my-web-mode-hook ()  "Hooks for Web mode."  (setq web-mode-markup-indent-offset 2))(add-hook 'web-mode-hook  'my-web-mode-hook)
(setq web-mode-comment-style 2)
(defun web-mode-keybinding-settings ()  "Settings for keybinding."  (eal-define-keys   '(web-mode-map)'
(("C-c C-v" browse-url-of-file))))(eval-after-load "web-mode-keybinding-settings"  '(web-mode-keybinding-settings))   (provide 'web-settings)

;; 配置switch-window
(require 'switch-window)
(global-set-key (kbd "C-o") 'switch-window)  

;; magit配置
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x p") 'magit-pull)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
(global-set-key (kbd "C-x M-b") 'magit-branch-and-checkout)
