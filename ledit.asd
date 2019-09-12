;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-USER; Base: 10 -*-
#|
  This file is a part of ledit project.
|#

(in-package :cl-user)

(defpackage :ledit-asd
  (:use :cl :asdf :assoc-utils))

(in-package :ledit-asd)

(defsystem "ledit"
  :version "0.1.0"
  :author "Simon Brooke <simon@journeyman.cc>"
  :license "GNU General Public License, version 2.0 or (at your option) any later version"
  :depends-on ("xmls")
  :components ((:module "src/lisp"
                :components
                ((:file "ledit"))))
  :description "A browser-based Lisp structure editor"
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op "ledit-test"))))
