#!/usr/bin/env python

import pandas as pd
import pyarrow as pa
import pyarrow.parquet as pq

df = pd.DataFrame({"a": [1, 2, 3],
                   "b": ["hello", "world", "!"]})
table = pa.Table.from_pandas(df)
pq.write_table(table, "/tmp/pandas.parquet")
