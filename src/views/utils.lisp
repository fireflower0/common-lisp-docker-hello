(defpackage #:hello/views/utils
  (:use #:cl
        #:cl-markup)
  (:export #:with-html))
(in-package #:hello/views/utils)

(defmacro with-html (title &body body)
  `(markup
    (html
     (:head
      (:meta :content "text/html" :charset "UTF-8")
      (:title ,title))
     (:body ,@body))))
