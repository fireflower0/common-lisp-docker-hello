(defpackage #:hello/config/routes
  (:use #:cl
        #:utopian
        #:hello/views/index
        #:hello/views/about)
  (:export :*routes*))
(in-package #:hello/config/routes)

(defroutes *routes*
  ((:GET "/" #'index)
   (:GET "/about" #'about)))
