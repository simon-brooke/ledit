;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-USER; Base: 10 -*-
#|
  This file is a part of ledit project.
|#

(defsystem "ledit-test"
  :defsystem-depends-on ("prove-asdf")
  :author ""
  :license ""
  :depends-on ("ledit"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "ledit"))))
  :description "Test system for ledit"

  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
