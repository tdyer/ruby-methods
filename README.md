![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# Ruby Methods

## Objectives

By the end of this, students should be able to:

- Invoke methods.
- Create a method
- Create a method with default parameters.
- Create a method with a hash parameter.
- Create a method with a splat operator.
- Create a method with keyword arguments.

## Instructions

#### Calling a method

> Create a file method_simple.rb and run it.

```ruby
# keyword 'def' is used to create a method
def say_hello
  # body of method is here
  "Hello World"
end  # must have and end

puts say_hello

# create a method with two params
def add(num1, num2)
  num1 + num2
end

# no need for semicolons, but one can use them.
# semi-colons are not typically used in Ruby.
# can use parens or not!
puts add(33, 9)
puts add 33, 9

# lets leave off a param
# add(88)
# Throws an ArgumentError exception
# `add': wrong number of arguments (1 for 2) (ArgumentError)
```

> Create a file demo/method_params.rb and run it.

```ruby
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

```


## Resources

- [Rubymonk Methods](https://rubymonk.com/learning/books/1-ruby-primer/chapters/19-ruby-methods/lessons/69-new-lesson)
- [Thoughtbot Ruby 2 Keyword Arguments](https://rubymonk.com/learning/books/1-ruby-primer/chapters/19-ruby-methods/lessons/69-new-lesson)
- [Ruby Keyword arguments video](https://www.youtube.com/watch?v=u8Q6Of_mScI)
