# frozen_string_literal: true

def to_histogram(array)
  array_key = array.uniq
  hh = {}

  array_key.each do |key|
    value = 0

    array.each do |element|
      hh[key] = value
      if element == key
        value += 1
        hh[key] = value
      end
    end
  end
  hh
end
