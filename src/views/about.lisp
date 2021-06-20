(defpackage #:hello/views/about
  (:use #:cl
        #:cl-markup)
  (:export #:about))
(in-package #:hello/views/about)

(defun about (params)
  (declare (ignore params))
  (list
   (markup
    (html
     (:head
      (:meta :content "text/html" :charset "UTF-8")
      (:title "About"))
     (:body
      (:div "foo, bar, baz"))))))
