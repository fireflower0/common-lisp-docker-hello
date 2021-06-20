(defpackage #:hello/app
  (:use #:cl
        #:utopian
        #:cl-markup
        #:hello/config/routes))
(in-package #:hello/app)

(defapp minimal-app () ())

(make-instance 'minimal-app :routes *routes*)
