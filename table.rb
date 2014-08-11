require 'nokogiri'

module Watir

  class Table

    def to_a
      #create an array of the table. One element for each cell
      doc = Nokogiri::HTML.parse(self.html)
      data_array = Array.new()
      doc.xpath("//td").each do |element|
        data_array << (element.text)
      end

      #this converts one dim array to two dims
      table_array = Array.new
      for i in (0...self.trs.size)
        tiny_array = Array.new
        for j in (0...self.row.cells.length)
          tiny_array << data_array[0]
          data_array.delete_at(0)
        end
        table_array << tiny_array
      end

      table_array
    end

  end
end


