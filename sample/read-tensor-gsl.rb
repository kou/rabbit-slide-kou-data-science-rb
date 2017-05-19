#!/usr/bin/env ruby

require "arrow"
require "arrow-gsl"

require "pp"

Arrow::MemoryMappedInputStream.open("/tmp/tensor.arrow") do |input|
  tensor = input.read_tensor(0)
  pp tensor.to_gsl
end
