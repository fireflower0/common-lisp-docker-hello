(defpackage #:hello
  (:use #:cl
        #:utopian))
(in-package #:hello)

(defun index (params)
  (declare (ignore params))
  "<html><body>Hello, World!</body></html>")

(defroutes *routes*
  ((:GET "/" #'index)))

(defapp minimal-app () ())

(make-instance 'minimal-app
               :routes *routes*)
