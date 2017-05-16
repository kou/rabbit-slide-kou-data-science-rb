#!/usr/bin/env python

import pyarrow as pa
import numpy as np

ndarray = np.random.randn(10, 6)
print(ndarray)
tensor = pa.Tensor.from_numpy(ndarray)
with pa.OSFile("/tmp/tensor.arrow", "wb") as sink:
    pa.write_tensor(tensor, sink)
