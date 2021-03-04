# arrayfire-cffi
CFFI bindings for ArrayFire

## Building
- SWIG
  https://github.com/egao1980/swig/tree/revive-cffi
- CFFI
  https://github.com/cffi/cffi/pull/154

## Examples

```lisp
(ql:quickload :arrayfire-cffi)
(use-package :arrayfire-cffi/library)

(cffi:with-foreign-pointer (arr (cffi:foreign-type-size 'af_array))
  (cffi:with-foreign-objects ((dims :long-long 1)
                              (sum-real :double)
                              (sum-img :double))
    (setf (cffi:mem-aref dims :long-long 0) 1000)
    (format t "~A~%"
            (af_randu arr 1 dims (cffi:foreign-enum-value 'af_dtype :f64)))
    (format t "~A~%"
            (af_print_array (cffi:mem-ref arr 'af_array)))
    (format t "~A~%"
            (af_sum_all sum-real sum-img (cffi:mem-ref arr 'af_array)))
    (format t "~A ~A~%"
            (cffi:mem-ref sum-real :double) (cffi:mem-ref sum-img :double))
    (af_free_host (cffi:mem-ref arr 'af_array))))
```
