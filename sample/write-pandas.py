#!/usr/bin/env python

import pyarrow as pa

df = pd.DataFrame({"a": [1, 2, 3],
                   "b": ["hello", "world", "!"]})
record_batch = pa.RecordBatch.from_pandas(df)

with pa.OSFile("/tmp/pandas.arrow", "wb") as sink:
    schema = record_batch.schema
    writer = pa.RecordBatchFileWriter(sink, schema)
    writer.write_batch(record_batch)
    writer.close()
