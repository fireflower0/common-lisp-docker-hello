(defpackage #:hello/views/index
  (:use #:cl
        #:cl-markup
        #:hello/views/utils)
  (:export #:index))
(in-package #:hello/views/index)

(defun index (params)
  (declare (ignore params))
  (with-html "Hello"
    (:h1 "Headline")
    (:div "Hello, world!")
    (:h1 "List")
    (:ul (loop for v in '("foo" "bar" "baz")
               collect (markup (:li v))))))
