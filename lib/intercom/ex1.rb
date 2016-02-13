module Intercom
  module Ex1
    VERSION = "0.0.1"

    # A method that flatten an array of arbitrarily nested arrays of integers into a flat array of integers.
    def self.flatten unflattened_array
      raise ArgumentError, 'Not an Array.' unless unflattened_array.is_a? Array

      unflattened_array.reduce([]) do |flattened_array, v|
        if v.is_a? Integer
          flattened_array << v
        elsif v.is_a? Array
          flattened_array.concat flatten v
        else
          raise ArgumentError, 'Must be an Integer or Array.'
        end
      end
    end

  end
end