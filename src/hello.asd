(defsystem hello
  :class :package-inferred-system
  :version "0.1.0"
  :author "fireflower0"
  :license "MIT"
  :description "Hello, world!"
  :depends-on ("clack"
               "utopian"
               "cl-markup"
               "cl-syntax-annot"
               "hello/app"))

(register-system-packages "hello/app" '(#:hello))
