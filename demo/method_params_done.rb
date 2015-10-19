# lets redine add to take 3 params, last one not required
# and defaults to 0
def add(num1, num2, num3 = 0)
  num1 + num2 + num3
end

puts add(3, 4, 8)
puts add(3, 4) # don't need last argument!

# lets make the last parameter a Hash
# common way to setup default parameters before ruby 1.9
def say_hello(str1, options = {})
  # merge params, any param such as str2: 'XX'
  # will overwrite str2: 'World'
  opts = {str2: 'World'}.merge(options)
  "#{str1} #{opts[:str2]}"
end

# uses default param, 'World'
puts say_hello('Hello')

# Notice I don't need the curly braces for the Hash arg if
# it's that last argument
puts say_hello('Hello', str2: 'Tom')
puts say_hello('Hello', str2: 'Cruel World')

# Splat, '*', operator. Will convert array to list of argument
# passed to a method.
puts add(*[6, 10, 5])

# Splat,'*', to slurp up argments.
def sum_up(*args)
  puts "args.class is #{args.class}"
  puts "args = #{args}"

  args.reduce do |sum, num|
    sum += num
  end
end

result = sum_up(4,9,8, 22,67)
puts "result = #{result}"
