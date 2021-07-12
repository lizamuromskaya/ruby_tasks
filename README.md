## Task1 ##
1. Arrays, Hashes, and Enumerables
)

    Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero. Run associated tests via: $ rspec -e '#sum ' spec/part1_spec.rb

    Define a method max_2_sum(array) which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element. Run associated tests via: $ rspec -e '#max_2_sum' spec/part1_spec.rb

    Define a method sum_to_n?(array, n) that takes an array of integers and an additional integer, n, as arguments and returns true if any two elements in the array of integers sum to n. sum_to_n?([], n) should return false for any value of n, by definition. Run associated tests via: $ rspec -e '#sum_to_n' spec/part1_spec.rb

2. Strings and Regular Expressions
)

    Define a method hello(name) that takes a string representing a name and returns the string "Hello, " concatenated with the name. Run associated tests via: $ rspec -e '#hello' spec/part2_spec.rb

    Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a consonant and false otherwise. (For our purposes, a consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works for both upper and lower case and for nonletters! Run associated tests via: $ rspec -e '#starts_with_consonant?' spec/part2_spec.rb

    Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents a binary number that is a multiple of 4. NOTE: be sure it returns false if the string is not a valid binary number! Run associated tests via: $ rspec -e '#binary_multiple_of_4?' spec/part2_spec.rb


3. Object Oriented Basics
)

    Define a class BookInStock which represents a book with an ISBN number, isbn, and price of the book as a floating-point number, price, as attributes. Run associated tests via: $ rspec -e 'getters and setters' spec/part3_spec.rb

    The constructor should accept the ISBN number (a string, since in real life ISBN numbers can begin with zero and can include hyphens) as the first argument and price as second argument, and should raise ArgumentError (one of Ruby's built-in exception types) if the ISBN number is the empty string or if the price is less than or equal to zero. Include the proper getters and setters for these attributes. Run associated tests via: $ rspec -e 'constructor' spec/part3_spec.rb

    Include a method price_as_string that returns the price of the book formatted with a leading dollar sign and two decimal places, that is, a price of 20 should format as "$20.00" and a price of 33.8 should format as "$33.80". Run associated tests via: $ rspec -e '#price_as_string' spec/part3_spec.rb


## Task2 ##
1. С клавиатуры вводится дата, единицы измерения(день, неделя, месяц, год) и длительность(целочисленное значение),
нужно вывести N последующих дат - использовать Хеш (ключ - ед.измерения, значения - Лямбда )
Например:
вводится дата                                 9/18/2020
единицы измерения(день, неделя, месяц, год)   month
и длительность(целочисленное значение)        10
Нужно вывести N последующих дат               4
Должно вывести:
9/18/2020 10/18/2020 11/18/2020 12/18/2020
Если единицы измерения дни, то получится
9/18/2020 9/28/2020 10/08/2020 10/18/2020

2. Сделать возможным safe_invert для Хэша (fruits_country = {

'orange' => 'Marocco',

'banana' => 'Ecuador',

'lemon' => 'Marocco',

})

3. На массиве реализовать метод получения Хэша (ключ - элемент, значение - количество повторений в массиве) 

['orange', 'banana', 'banana', 'banana', lemon', lemon'].to_histogram # => {'orange'=>1, 'banana'=>3, 'lemon'=>2}
