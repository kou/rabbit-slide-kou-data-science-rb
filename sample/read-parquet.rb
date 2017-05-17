#!/usr/bin/env ruby

require "arrow"
require "parquet"

reader = Parquet::ArrowFileReader.new("/tmp/pandas.parquet")
table = reader.read_table
table.each_column do |column|
  puts("#{column.name}: #{column.to_a.inspect}")
end
