(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  )

(use-package key-chord
  :ensure t
  :config
  (setq key-chord-two-keys-delay 0.2)
  (key-chord-define evil-insert-state-map "fd" 'evil-normal-state)
  (key-chord-mode 1)
  )

(use-package evil-matchit
  :ensure t
  :config
  (setq evilmi-shortcut "m")
  (global-evil-matchit-mode 1)
  )

(use-package evil-leader
  :ensure t
  :config
  (global-evil-leader-mode)
  (evil-leader/set-leader ",")
  (evil-leader/set-key
   "f" 'counsel-find-file
   "b" 'switch-to-buffer
   "w" 'save-buffer
   "k" 'kill-buffer)
  )

(use-package evil-nerd-commenter
  :ensure t
  :config
  (evilnc-default-hotkeys)
  (define-key evil-normal-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
  (define-key evil-visual-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
  )

(provide 'init-evil)
