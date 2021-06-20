(defpackage #:hello/config/routes
  (:use #:cl
        #:utopian
        #:hello/views/index)
  (:export :*routes*))
(in-package #:hello/config/routes)

(defroutes *routes*
  ((:GET "/" #'index)))
