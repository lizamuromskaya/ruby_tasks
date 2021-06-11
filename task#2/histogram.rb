# frozen_string_literal: true

def to_histogram(array)
  array_key = array.uniq
  hh = {}

  array_key.each do |key| # orange 0
    value = 0

    array.each do |el| # orange
      hh[key] = value
      if el == key
        value += 1
        hh[key] = value
      end
    end
  end
  hh
end

array = %w[orange banana banana banana lemon lemon kiwi]
p to_histogram(array)
