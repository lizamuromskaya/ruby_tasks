# frozen_string_literal: true

require 'active_support/all'
module DateCounter
  puts 'Enter date'
  puts 'day:'
  @day = gets.to_i
  puts 'month:'
  @month = gets.to_i
  puts 'year:'
  @year = gets.to_i

  puts 'Enter units of measurement:
1 - day,
2 - week,
3 - month,
4 - year:'
  units = gets.chomp!.to_i
  h_units = { 1 => 'day', 2 => 'week', 3 => 'month', 4 => 'year' }
  puts 'Enter duration (integer value):'
  @duration = gets.to_i
  puts 'Enter the number of subsequent dates (integer value):'
  @n = gets.to_i

  p @input = Time.new(@year, @month, @day)

  day_counter = -> {  @input += 86_400 * @duration }

  week_counter = -> { @input += 604_800 * @duration }
  month_counter = -> { @input += @duration.month }
  year_counter = -> { @input += @duration.year }

  hh = { 'day' => day_counter, 'week' => week_counter, 'month' => month_counter, 'year' => year_counter }

  if hh[h_units[units]]
    @n.times do
      p hh[h_units[units]].call
    end
  end
end
