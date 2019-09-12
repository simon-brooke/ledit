;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-USER; Base: 10 -*-

(defpackage ledit
  (:use :cl :xmls))
(in-package :ledit)

(defun slurp (infile)
  (with-open-file (instream infile :direction :input :if-does-not-exist nil)
    (when instream
      (let ((string (make-string (file-length instream))))
        (read-sequence string instream)
        string))))

(defn html-to-lisp (markup)
  (cond
   ((stringp markup)(html-to-lisp (xmls:node->nodelist (xmls:parse markup))))
   (t
    (let*
	((classes (cadr
