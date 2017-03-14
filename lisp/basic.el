
;; 取消开机画面
(setq inhibit-startup-message t)

;; 设置个人信息
(setq user-mail-address "18803880712@126.com")

;; 制定备份文件路径
(setq backup-directory-alist '(("." . "~/.emacs.b")))
      
;; 显示时间
(display-time-mode 1)
(setq display-time-24hr-format t)

;;闪屏报警
(setq visible-bell t)

;; 设置可以直接打开图片
(setq auto-image-file-mode t)

;; 使用y or n提问
(fset 'yes-or-no-p 'y-or-n-p)
;; 锁定行高
(setq resize-mini-windows nil)
;; 递归minibuffer
(setq enable-recursive-minibuffers t)

;; 高亮显示成对括号
(show-paren-mode t)

;; 鼠标指针避光标
(mouse-avoidance-mode 'animate)

;; 粘贴于光标处,而不是鼠标指针处
(setq mouse-yank-at-point t)

;; 显示行列号
(setq column-number-mode t)

;; 显示标题栏 %f 缓冲区完整路径 %p 页面百分数 %l 行号
(setq frame-title-format "%f")

;; 缺省模式 text-mode
(setq default-major-mode 'text-mode)

; ;开启语法高亮。
(global-font-lock-mode 1)

;; 设置自动保存
(setq auto-save-mode nil)

;; 设置跳转键为alt+g
(global-set-key (kbd "M-g") 'goto-line)

;; 设置窗口切换键
;;(global-set-key (kbd "C-o") 'other-window)

;; 设置撤销快捷键
(global-set-key (kbd "C-/") 'undo)

;; 设置标记
(global-set-key (kbd "M-/") 'set-mark-command)

;; 自动补全括号
(electric-pair-mode t)

;; 逗号自动空格
(global-set-key (kbd ",")
  #'(lambda ()
    (interactive)
	  (insert ", ")))

(set-language-environment 'Chinese-GB)
(setq locale-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default buffer-file-coding-system 'utf8)
(set-default-coding-systems 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)

;; 缩进配置
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)
(setq c-default-style "Linux")
(setq c-basic-offset 4) 
