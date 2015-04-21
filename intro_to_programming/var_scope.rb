# VARIABLES: used to store info to be referenced and manipulated in program

# scope is determined by where var is init
# defined by block (piece of code following method invocation)
# blocks usually delimited by { } or do/end pairs

# INNER SCOPE CAN ACCESS VARS INIT IN OUTER SCOPE, BUT NOT VICE VERSA

# Variable Scope Examples


a = 5					# var init in outer scope

3.times do |n|
	a = 3				# a is accessible here, in inner scope
#	b = 5				# b is init in inner scope
end

puts a
# puts b 			# b is not accessible here, in outer scope


def some_method
	a = 3
end

puts a 				# value of a doesn't change; methods create their own scope


# key distinguishing factor for deciding whether code delimited by {} or do/end is considered a block (and thus creating new scope for vars) is seeing if {} or do/end immediately follows a method invocation

arr = [1, 2, 3]

for i in arr do
	x = 5				# x is init here
end

puts x				# x is accessible here

# for...do/end did not create a new inner scope (since for is part of Ruby and not a method invocation)
# each, times, and other methods, followed by {} or do/end DOES create a new block


# VARIABLE TYPES

# 1. CONSTANTS: used for storing data that never needs to change
# cannot be declared in methods and are available throughout app's scopes
# EXAMPLE > MY_CONSTANT = 'I am available throughout your app'

# 2. GLOBAL VARS: available throughout app, overrides all scope boundaries
# tend to stay away from them, as there can be unexpected complications
# EXAMPLE > $var = 'I am also available throughout your app'

# 3. CLASS VARS: used to declare a var that is related to a class, but each instance of that class doesn't need its own value for this var
# accessible by instances of your class and class itself, must be init at class level outside of methods, and can be altered using class or instance methods
# EXAMPLE > @@classvar = 0

# 4. INSTANCE VARS: available throughout current instance of parent class
# can cross some scope boundaries, but not all; covered more in OOP topics
# EXAMPLE > @instance = 'I am available throughout instance of this class'

# 5. LOCAL VARS: most common vars, obeying all scope boundaries
# EXAMPLE > var = 'I must be passed around to cross scope boundaries'