#!/usr/bin/env ruby

require "rroonga"

Groonga::Database.create(path: "/tmp/db")
logs = Groonga::Array.create(name: "logs")
logs.load_arrow("/tmp/pandas.arrow")
logs.each do |record|
  p record.attributes
end
filtered_logs = logs.select do |record|
  record.b =~ "hello"
end
filtered_logs.dump_arrow("/tmp/filtered.arrow",
                         column_names: ["a", "b"])
