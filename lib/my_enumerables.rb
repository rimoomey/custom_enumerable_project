# Custom enumerable methods
module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    my_each do |element|
      yield element, index
      index += 1
    end
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    arr = []
    each do |element|
      arr << yield(element)
    end
  end
end
