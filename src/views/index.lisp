(defpackage #:hello/views/index
  (:use #:cl
        #:hello/views/utils)
  (:export #:index))
(in-package #:hello/views/index)

(defun index (params)
  (declare (ignore params))
  (with-html "Hello"
    (:h1 "Headline")
    (:div "Hello, world!")))
