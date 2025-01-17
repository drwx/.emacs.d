;;; interactive-funcs.el --- define some useful interactive-funcs

;;; Commentary:
;;; (c) Cabins, github.com/cabins/.emacs.d

;;; Code:

;; DEPENDENCIES

(defun cabins/reload-init-file ()
  "Reload the user init file."
  (interactive)
  (load-file user-init-file))

(defun cabins/packages-upgrade()
  "Upgrade all the packages."
  (interactive)
  (message "Upgrading all the packages...")
  (auto-package-update-now)
  (message "All the packages are up to date.")
  (let ((buffer (get-buffer "*Compile-Log*")))
    (if buffer
        (kill-buffer buffer))))

(defun cabins/user-login-info ()
  "Print the login user info as init message"
  (let ((prefix ";; Configuration by Cabins <github.com/cabins>.\n")
        (os-version (format ";; %20s: %S\n" "Operating System" system-type))
        (user-names (format ";; %20s: %s\n" "Login User" (user-login-name)))
        (machine-name (format ";; %20s: %s\n" "Machine Name" (system-name)))
        (suffix ";; Enjoy!"))
    (concat prefix ";;\n" os-version user-names machine-name ";;\n" suffix)))

(provide 'interactive-funcs)
;;; interactive-funcs.el ends here
