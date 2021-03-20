(ql:quickload :clack)

(clack:clackup
 (lambda (env)
   (declare (ignore env))
   '(200 (:content-type "text/html") ("<h1>Hello, world!</ht>")))
 :address "0.0.0.0"
 :port 8080)
