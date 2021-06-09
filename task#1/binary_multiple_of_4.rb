# frozen_string_literal: true

# Define a method hello(name) that takes
# a string representing a name and returns
# the string "Hello, " concatenated with the name
BINARYNUMBER = /^[01]+00$/.freeze

def binary_multiple_of_4?(s)
  return true if s == '0'

  BINARYNUMBER.match?(s)
end
