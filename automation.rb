require 'watir-webdriver'
require_relative "table"
require 'benchmark'

b = Watir::Browser.new :ie
b.goto 'http://localhost:4567/sample'
sample = b.table(:id => 'sample')

def table_row(sample)
  (0...sample.trs.size).each do |row|
    (0...sample.row.cells.length).each do |cell|
      sample[row][cell].text
    end
  end
end


def table_trs(sample)
  sample.trs.each do |row|
    row.cells.each do |cell|
      cell.text
    end
  end
end


def table_noko(sample)
  sample_array = sample.to_a
  (0...sample_array.size).each do |row|
    (0...sample_array[0].size).each do |cell|
      sample_array[row][cell]
    end
  end
end


Benchmark.bm(7) do |x|
  x.report("table_row:")   { table_row(sample)}
  x.report("table_trs:") { table_trs(sample)}
  x.report("table_noko:")  { table_noko(sample)}
end

b.close