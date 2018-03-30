puts "Hello"
a = 10
b = 4
c = a + b
puts "The value of c is : #{c}"
def square(x)
	x*x
	puts "value of #{square(x)}"
end
def polar(x,y)
	theta = Math.atan2(y,x)
	r = Math.hypot(x,y)
	[r,theta]
end
distance, angle = polar(2, 2)
puts "The first time to study Ruby language !"

# => Exercise1. Befor executing the code given below, guess the results.
# => Next, execute the code. Did you get it right?
# => if you did not get it right, can you thing of why?
# => Disuss your fitst guess and what you got when running the code.
# => Goal: Understanding operator precedence and association


y = false
z = true
x = y or z
puts x
(x = y) or z
puts x
x = (y or z)
puts x

# => Exercise 2: Read the sprint documentation and the % documentation in the String class and figure out the output being printed by of this Ruby code.

puts "%05d" % 123

# => Exercise 3: Write a Ruby program that displays how old I am, in years, if I am 9700000 seconds old.
# => display the result as a floating point (decimal) number to two decimal places (for exampl, 17.23)
# => Note: To format the output to say 2 decimal places, we can use the Kernel's format method.
# => if x = 45.5678 then format("%.2f",x) will return the string 45.57

def how_old(age_in_seconds)
	Float(age_in_seconds) / 60 / 60 / 24 / 365
	
end
age_in_seconds = 97_000_000
puts "you are %.2f years old" % how_old(age_in_seconds)

# => Exercise 4: Write a Ruby program that tells you how many minutes there are in a year (do not bother right now about leap years etc.).

puts 525600
minutes = 60 * 24 * 365
puts "There are #{minutes} minutes in a year."
# => There are 525600 minutes in a year

# => Exercise 5: The following program prints the value of the variable. Why?

my_string = 'Hello Ruby World'
def my_string
	'Hello World'
	
end
puts my_string

# => Exercise 6: Write a method called called convert that takes one argument which is a temperature in degrees Fahrenheit.
# => This method should return the temperature in degrees Celsius.
# => To format the output to say 2 decimal places, we can use the Kernel's format method.
# => For example if x = 45.5678 then format("%2f",x) will return the string "45.57". This is also to say that if x = 10 then
# => format("$.2f") will return the string "10.00"
# => Another way is to use the round funtion as follows: puts (x*100).round/100.0

def convert(temperature_in_F)
	(temperature_in_F - 32) / 1.8
end

puts "%.2" % convert(-40)