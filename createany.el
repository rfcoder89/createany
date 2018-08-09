(setq createany--root-map (make-hash-table :test 'equal))

(puthash
 "NPM module"
 '(lambda ()
    (message "Helllo"))
         createany--root-map)

(defun createany ()
  (interactive)
  (funcall
   (gethash (completing-read (format "%s" default-directory)  createany--root-map nil t) createany--root-map)))

(provide 'createany)
