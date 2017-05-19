#!/usr/bin/env lua

local lgi = require "lgi"
local Arrow = lgi.Arrow

local input_class = Arrow.MemoryMappedInputStream
local input = input_class.new("/tmp/pandas.arrow")
local reader = Arrow.RecordBatchFileReader.new(input)
for i = 0, reader:get_n_record_batches() - 1 do
   local record_batch = reader:get_record_batch(i)
   print(string.rep("=", 40))
   print("record-batch["..i.."]:")
   io.write(record_batch:to_string())
end
input:close()
