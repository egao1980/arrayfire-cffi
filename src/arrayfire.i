%module arrayfire

%insert("lisphead") %{

(defpackage #:arrayfire-cffi/v3.8.0
  (:use #:cl #:cffi))

(in-package :arrayfire-cffi/v3.8.0)
%}
#define __attribute__(x)

%include "arrayfire.h"
%include "af/version.h"
%include "af/compilers.h"
%include "af/defines.h"
%include "af/compatible.h"
%include "af/algorithm.h"
%include "af/arith.h"
%include "af/array.h"
%include "af/backend.h"
%include "af/blas.h"
%include "af/complex.h"
%include "af/constants.h"
%include "af/data.h"
%include "af/device.h"
%include "af/event.h"
%include "af/exception.h"
%include "af/features.h"
%include "af/gfor.h"
%include "af/graphics.h"
%include "af/half.h"
%include "af/image.h"
%include "af/index.h"
%include "af/lapack.h"
%include "af/memory.h"
%include "af/ml.h"
%include "af/random.h"
%include "af/seq.h"
%include "af/signal.h"
%include "af/sparse.h"
%include "af/statistics.h"
%include "af/timing.h"
%include "af/util.h"
%include "af/version.h"
%include "af/vision.h"
