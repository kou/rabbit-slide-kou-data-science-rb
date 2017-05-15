#!/usr/bin/env python

import pyarrow as pa
import numpy as np

tensor = pa.Tensor.from_numpy(np.random.randn(10, 6))
with pa.OSFile("/tmp/tensor.arrow", "wb") as sink:
    pa.write_tensor(tensor, sink)
