#!/usr/bin/env ruby

require "arrow"

Arrow::MemoryMappedInputStream.open("/tmp/dataframe.feather") do |input|
  reader = Arrow::FeatherFileReader.new(input)
  reader.columns.each do |column|
    puts("#{column.name}: #{column.to_a.inspect}")
  end
end
