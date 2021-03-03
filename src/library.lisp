(defpackage arrayfire-capi/library
  (:use :cl))
(in-package :arrayfire-capi/library)

(cffi:define-foreign-library arrayfire
  (:darwin (:or
            "libafcpu.3.dylib"
            "libafcpu.dylib"))
  (:linux (:or
           "libafcpu.3.so"
           "libafcpu.so"))
  (t (:or
      (:default "libafcpu-3")
      (:default "libafcpu"))))

(cffi:use-foreign-library arrayfire)

(let* ((package-name :arrayfire-cffi/v3.8.0)
       (package (find-package package-name)))
  (do-all-symbols (sym package)
    (when (eql (symbol-package sym) package)
      (progn
        (shadowing-import sym)
        (export sym)))))



