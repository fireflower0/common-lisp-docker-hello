(defpackage #:hello/app
  (:use #:cl
        #:utopian
        #:cl-markup))
(in-package #:hello/app)

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

(defroutes *routes*
  ((:GET "/" #'index)))

(defapp minimal-app () ())

(make-instance 'minimal-app :routes *routes*)
