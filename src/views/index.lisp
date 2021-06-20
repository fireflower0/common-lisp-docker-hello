(defpackage #:hello/views/index
  (:use #:cl
        #:cl-markup)
  (:export #:index))
(in-package #:hello/views/index)

(defun index (params)
  (declare (ignore params))
  (list
   (markup
    (html
     (:head
      (:meta :content "text/html" :charset "UTF-8")
      (:title "Hello"))
     (:body
      (:div "Hello, fireflower0"))))))
