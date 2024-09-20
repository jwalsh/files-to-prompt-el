;;; files-to-prompt-test.el --- Tests for files-to-prompt

;;; Commentary:

;; Tests for files-to-prompt

;;; Code:

(require 'ert)
(require 'files-to-prompt)

(ert-deftest files-to-prompt-test-basic ()
  "Basic test for files-to-prompt."
  (should (functionp 'files-to-prompt)))

(provide 'files-to-prompt-test)

;;; files-to-prompt-test.el ends here
