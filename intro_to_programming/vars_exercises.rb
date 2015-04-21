# Exercise 1 / name.rb

puts "Please enter your name."
first_name = gets.chomp
puts "And your last name?"
last_name = gets.chomp
puts "Nice to meet you, #{first_name} #{last_name}."

# Exercise 2 / age.rb

puts "How old are you?"
age = gets.chomp.to_i
puts "In 10 years you will be:"
puts age + 10
puts "In 20 years you will be:"
puts age + 20
puts "In 30 years you will be:"
puts age + 30
puts "In 40 years you will be:"
puts age + 40

# Exercise 3 / name.rb

10.times do |n|
	puts first_name
end

# Exercise 4

puts "In the first example, x will print 3. X is available to the inner scope of the do/end code even though it was init in outer scope. In the second, an error. X was init in the inner scope, and thus is not accessible to the outer scope."