#!/usr/bin/env python

import pandas as pd
import pyarrow as pa

with pa.OSFile("/tmp/filtered.arrow") as source:
    writer = pa.RecordBatchFileReader(source)
    print(writer.get_record_batch(0).to_pandas())
