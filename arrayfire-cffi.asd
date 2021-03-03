(defsystem "arrayfire-cffi"
  :version "0.1.0"
  :author "Nikolai Matiushev"
  :license "MIT"
  :depends-on ("cffi"
               "cl-ppcre")
  :components ((:module "src"
                :components
                ((:file "arrayfire")
                 (:file "library"))))
  :description "ArrayFire C API wrapper")
