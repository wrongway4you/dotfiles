;; Fix mouse stuff
(global-unset-key [mouse-2])
(global-unset-key [mouse-1])

;; Emacs-specific keybindings
(global-set-key (kbd "C-q")     'save-buffers-kill-terminal)
(global-set-key (kbd "<f7>")    'execute-extended-command)
(global-set-key (kbd "<f1>")    'eval-region)

;; Find file
(global-set-key (kbd "C-f")     'find-file)
(global-set-key (kbd "<f11>")   'open-same-file-other-window)
(global-set-key (kbd "<f12>")   'find-corresponding-file)
(global-set-key (kbd "S-<f12>") 'find-corresponding-file-other-window)
(global-set-key (kbd "C-S-f")   'find-file-other-window)

;; Search in the file
(global-set-key (kbd "C-r")     'query-replace)
(global-set-key (kbd "C-e")     'isearch-forward)
(global-set-key (kbd "C-S-e")   'isearch-repeat-forward)

;; Window manipulation
(global-set-key (kbd "C-;")     'other-window)
(global-set-key (kbd "C-w")     'kill-this-buffer)
(global-set-key (kbd "C-S-w")   'kill-buffer-and-window)
(global-set-key (kbd "C-g")     'goto-line)
(global-set-key (kbd "RET")     'newline-and-indent)
(global-set-key (kbd "<f2>")    'neotree-toggle)

;; Save buffers
(global-set-key (kbd "C-s")    'save-buffer)
(global-set-key (kbd "C-S-s")  'save-all-buffers)

;; Font size manipulation
(global-set-key (kbd "C-=")    'text-scale-increase)
(global-set-key (kbd "C--")    'text-scale-decrease)

;; Cursor navigation
(global-set-key (kbd "C-M-j")  nil)
(global-set-key (kbd "C-M-l")  nil)
(global-set-key (kbd "C-M-i")  nil)
(global-set-key (kbd "C-M-k")  nil)
(global-set-key (kbd "M-j")    'backward-char)
(global-set-key (kbd "M-l")    'forward-char)
(global-set-key (kbd "M-i")    'previous-line)
(global-set-key (kbd "M-k")    'next-line)
(global-set-key (kbd "C-i")    'backward-paragraph)
(global-set-key (kbd "C-k")    'forward-paragraph)
(global-set-key (kbd "C-j")    'backward-word)
(global-set-key (kbd "C-l")    'forward-word)

;; Comment/Uncomment
(global-set-key (kbd "C-/")  'comment-dwim)
(global-set-key (kbd "C-_")  'comment-dwim)

;; Folding
;(global-set-key (kbd "C-[") 'hs-show-block)
;(global-set-key (kbd "C-{") 'hs-show-all)
;(global-set-key (kbd "C-]") 'hs-hide-block)
;(global-set-key (kbd "C-}") 'hs-hide-all)

;; Other stuff
(global-set-key (kbd "C-S-p")   'kill-ring-save)
(global-set-key (kbd "C-p")     'yank)
(global-set-key (kbd "C-v")     'yank)
(global-set-key (kbd "C-x")     'kill-region)

;; Map escape to cancel (like C-g)...
(define-key isearch-mode-map [escape] 'isearch-abort)
(define-key isearch-mode-map "\e" 'isearch-abort)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Fix bad backspace
(global-set-key [(control ?h)] 'delete-backward-char)

;; Undo Tree package
;(require 'undo-tree)
;(global-undo-tree-mode 1)
;(global-set-key (kbd "C-z") 'undo)
;(defalias 'redo 'undo-tree-redo)
;(global-set-key (kbd "C-S-z") 'redo)

;; Multiple Cursors package
;(require 'multiple-cursors)
;(global-set-key (kbd "C-.") 'mc/mark-next-like-this)
;(global-set-key (kbd "C-,") 'mc/mark-previous-like-this)

;; OLD stuff
;; (global-set-key (kbd "C-h") 'kill-region)
;; (global-set-key (kbd "C-n") 'yank)
;; (global-set-key (kbd "C-y") 'kill-ring-save)
;; (global-set-key (kbd "C-v") 'yank)
;; (global-set-key (kbd "C-a") 'mark-whole-buffer)
;; (global-set-key (kbd "C-S-x") 'kill-region)
;; (global-set-key (kbd "C-z") 'undo)
;; (global-set-key (kbd "C-s") 'save-buffer)
;; (global-set-key (kbd "C-S-s") 'save-some-buffers)
;; (global-set-key (kbd "C-/") 'toggle-comment-region-or-line)
(global-set-key (kbd "<tab>") 'indent-for-tab-command)
;; (global-set-key (kbd "C-<backspace>") 'backward-kill-word)
;; (global-set-key (kbd "C-<delete>") 'forward-kill-word)
;; (global-set-key (kbd "<f9>") 'indent-region)

(provide 'keybindings)
;;; keybindings.el ends here
