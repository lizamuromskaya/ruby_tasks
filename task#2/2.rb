
DATEFORMAT=/^[0-9]*\/[0-9]*\/[0-9]*/
MONTH=/^[0-9]*/
DAY=/\/[0-9]*\// 
YEAR=/[0-9]*$/

def leap_year?(year)
  (year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0)
end

	def feb 
		if leap_year?(@input_year )   
			@number_of_days[2]=29
		elsif
			@number_of_days[2]=28
		end
	end

@number_of_days={1=>31,2=>feb, 3=>31, 4=>30, 5=>31, 6=>30, 7=>31, 8=>31 ,9=>30, 10=>31, 11=>30, 12=>31}

	def right_date
		if (@input_day>0 && @input_day<=@number_of_days[@input_month])
			return true
		end
			return false
	end


loop do
	puts "Enter date in format m/dd/yyyy:"
	@date=gets.chomp!

	if DATEFORMAT.match?(@date) 

		@input_month=@date.scan(MONTH)[0].to_i
		@input_day=@date.scan(DAY)[0].delete('/').to_i
		@input_year=@date.scan(YEAR)[0].to_i
		if right_date
			break
		end
	end
	puts "Try again!"
end

puts "Enter units of measurement (day, week, month, year):"
units=gets.chomp!
puts "Enter duration (integer value):"
duration=gets.chomp!.to_i
puts "Enter the number of subsequent dates (integer value):"
n=gets.chomp!.to_i


