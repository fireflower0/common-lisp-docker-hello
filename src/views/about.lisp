(defpackage #:hello/views/about
  (:use #:cl
        #:hello/views/utils)
  (:export #:about))
(in-package #:hello/views/about)

(defun about (params)
  (declare (ignore params))
  (with-html "About"
    (:div "foo")
    (:div "bar")
    (:div "baz")))
