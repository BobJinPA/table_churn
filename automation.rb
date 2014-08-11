require 'watir-webdriver'
require_relative "table"

b = Watir::Browser.new :chrome

b.goto 'http://localhost:4567/sample'

sample = b.table(:id => 'sample')

(0...sample.trs.size).each do |row|
  (0...sample.row.cells.length).each do |cell|
    puts sample[row][cell].text
  end
end

puts '-----------'

sample_array = sample.to_a

(0...sample_array.size).each do |row|
  (0...sample_array[0].size).each do |cell|
    puts sample_array[row][cell]
  end
end

b.close