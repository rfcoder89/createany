(defun createany ()
  (interactive)
  (let ((filename (read-file-name "Create file: " default-directory)))
    (if (file-exists-p filename)
      (message "File already exists!")
      (find-file filename)
      (ivy-yasnippet))))

(provide 'createany)
