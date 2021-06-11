# frozen_string_literal: true

class Hash
  def safe_invert
    new_hash = {}
    each do |k, v|
      if v.is_a? Array
        v.each { |x| new_hash.add_or_append(x, k) }
      else
        new_hash.add_or_append(v, k)
      end
    end
    new_hash
  end

  def add_or_append(key, value)
    self[key] = if key?(key)
                  [value, self[key]].flatten
                else
                  value
                end
  end
end

fruits_country = {

  'orange' => 'Marocco',

  'banana' => 'Ecuador',

  'lemon' => 'Marocco'

}
puts fruits_country
puts fruits_country.safe_invert
