require "sqlite3"
require "rulers/sqlite_model"

class MyTable < Rulers::Model::SQLite; end

STDERR.puts MyTable.schema.inspect

mt = MyTable.create "title" => "It happened!", "Posted" => 1, "body" => "It did!"

puts "Count: #{MyTable.name}"