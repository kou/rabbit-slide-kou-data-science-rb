#!/usr/bin/env ruby

require "arrow"

Arrow::MemoryMappedInputStream.open("/tmp/pandas.arrow") do |input|
  reader = Arrow::FileReader.new(input)
  reader.each do |record_batch|
    puts("=" * 40)
    puts(record_batch)
  end
end
