# frozen_string_literal: true

# Define a method max_2_sum(array)
# which takes an array of integers as an argument and returns
# the sum of its two largest elements. For an empty array
# it should return zero.For an array with just one element,
# it should return that element.

def max_2_sum(array)
  array.max(2).sum
end
