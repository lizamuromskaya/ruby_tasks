# frozen_string_literal: true

# Define a method sum_to_n?(array, n) that takes
# an array of integers and an additional integer, n,
# as arguments and returns true if any two elements
# in the array of integers sum to n. sum_to_n?([], n)
# should return false for any value of n, by definition.

def sum_to_n?(array, n)
  array.permutation(2).any? { |a, b| a + b == n }
end
