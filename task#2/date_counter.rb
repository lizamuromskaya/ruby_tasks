# frozen_string_literal: true

puts 'Enter date'
puts 'day:'
@day = gets.to_i
puts 'month:'
@month = gets.to_i
puts 'year:'
@year = gets.to_i
week=7
def leap_year?(year)
  (year % 4).zero? && year % 100 != 0 || (year % 400).zero?
end
puts 'Enter units of measurement:
1 - day, 
2 - week, 
3 - month, 
4 - year:'
units = gets.chomp!.to_i
h_units={1=>'day',2=>'week',3=>'month',4=>'year' }
units_func={1=>@day,2=>@day,3=>@month,4=>@year }
puts 'Enter duration (integer value):'
@duration = gets.chomp!.to_i
puts 'Enter the number of subsequent dates (integer value):'
@n = gets.chomp!.to_i

@month31=[1,3,5,7,8,10,12]
@month30=[4,6,8,9,11]

day_counter=lambda do |day| 
  @day=@day+@duration

  if leap_year?(@year) #29/02
    if @month==2
      
    end  
  end
  if @month31.include? @month
  end
end

week_counter=lambda{|day| p day}
month_counter=lambda{}

year_counter=lambda do |year| 
  @year=@year+@duration
  p "#{@day}/#{@month}/#{@year}"
end


hh={'day'=>day_counter,'week'=>week_counter, 'month'=>month_counter, 'year'=>year_counter}


if hh[h_units[units]] 
  @n.times do
    res=hh[h_units[units]].call units_func[units]
  end
end



