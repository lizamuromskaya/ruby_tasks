# frozen_string_literal: true

# Define a class BookInStock which represents
# a book with an ISBN number, isbn, and price
# of the book as a floating-point number, price, as attributes.
# The constructor should accept the ISBN number
# (a string, since in real life ISBN numbers can
# begin with zero and can include hyphens) as the
# first argument and price as second argument, and
# should raise ArgumentError (one of
# Ruby's built-in exception types) if the ISBN number
# is the empty string or if the price is less than or equal to zero.
# Include the proper getters and setters for these attributes.
# Include a method price_as_string that returns the price of the book
# formatted with a leading dollar sign and two decimal places, that is,
# a price of 20 should format as "$20.00" and a price of 33.8 should format as "$33.80".

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'Price should be positive number!' if price <= 0
    raise ArgumentError, 'ISBN shoud be not empty string!' if isbn == '' || isbn.class != String

    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{format('%.2f', @price)}"
  end
end
