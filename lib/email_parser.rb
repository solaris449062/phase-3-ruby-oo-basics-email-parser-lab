# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


require 'pry'

class EmailAddressParser

    attr_accessor :input_string

    def initialize(input_string)
        @input_string = input_string
    end

    def parse
        split_array = @input_string.split(/[,\s]/)
        for i in 0..(split_array.length - 1)
            split_array[i] = split_array[i].strip
            # binding.pry
        end
        parsed_array = split_array.select do |item|
            item != ""
        end
        return parsed_array.uniq
    end
end