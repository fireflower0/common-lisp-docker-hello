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
    (:br)
    (:h1 "Button")
    (:button "Clicked!")
    (:br)
    (:h1 "Input")
    (:input)
    (:br)
    (:h1 "List")
    (:ul (loop for v in '("foo" "bar" "baz")
               collect (markup (:li v))))
    (:br)
    (:h1 "Table")
    (:table :border 1
     (loop for i from 1 to 9
           collect (markup
                    (:tr
                     (loop for j from 1 to 9
                           collect (markup
                                    (:td (format nil "~A" (* i j)))))))))))
