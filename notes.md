# Notes for Complete Ruby on Rails course on Udemy

## Section 2 - The Ruby Programming Language
### Lecture 15 - ****Intro to Section 2 and Ruby  
- ruby-lang.org
- 

### Lecture 16 - Into to Ruby - Text with Directions, References 

### Lecture 26
Arrays
- ex. [1,2,3,4,5,6,"Caleb",[1,2,3]]

if x = [1,2,3,4,5,6,"Caleb",[1,2,3]]
`x[0] == 1`
`x[7] == [1,2,3]`
`x[7][1] == 1`
`x.shuffle` = randomly shuffled version of x array
`x.shuffle!` = same but permanently mutated

if y is a range from 0 up to _and including_ 99
`y = (0..99)` == range from 0 to 99 *including* 99
`y = (0...99)` == range from 0 to 99 *excluding* 99

`y.to_a` = turns y range into an array
`y.to_a << 30` = pushes 30 onto the end of the (shovel operator)

if z = [1,2,3,4,5,6,7,8,9,10]
`z.push(11)` = will push an 11 on to the end of the z array
`z.unshift(arg)` = will add arg to the front of an array
`z.shift` = removes first item in the array
`z.pop` = pops the last item off the end of the array
`z.uniq` = removes similar items in the array
`z.uniq!` = permanently removes similar items in the array
`z.shuffle` = randomly shuffles all the items in an array
`z.sort` = sorts them in place (be careful for capitalized letters - lowercase comes first.)
`z.join` = joins all elements in the array
`z.empty?`
`z.include?(itemname)`


if y == an array of 1-99
`y.each {|i| puts i}` will iterate through all 99 and output each number.

For loops...
```
for potato in y
puts "Hello"
end
```
^ will output "Hello" for every number that entry that is present in the y array.

`y.select { |number| number.odd? }`
`x.select { |number| p number if number.even? }`

### given notes for Section 2, Lecture 27

Array, created by including elements within square brackets:

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

The index for an array starts with 0, so in the array above a[0] is 1

Some methods you can use on arrays:

arrayname.empty?

arrayname.include?(itemname)

arrayname.reverse

arrayname.reverse! # use ! at the end to change the original array

arrayname.shuffle

arrayname.push(30) # will append new element 30 to the end array

arrayname << 25 # << known as shovel operator will also append new element to the end of the array

arrayname.unshift("someelement") # will add element "some element" to the beginning of the array

arrayname.pop # will remove the last element of the array and return 1

arrayname.uniq # will remove all the duplicates and display (will not change the original array)

arrayname.uniq! # will remove all the duplicates in the original array

A range:

(0..25).to_a

will create an array with elements from value 0 to 25

(0..99).to_a.shuffle!

will create an array with elements from value 0 to 99 in random order

To loop through an array named y using the .each method and print out the value of each element:

y.each { |i| puts i }

In plain terms: For each element i in array y print the value of i

To execute iteration through an array called names using a block:

names.each do |randomvariablename| # starts the do block

puts "Hello #{randomvariablename}" # executes code for each element

end # ends the do block

To capitalize (or use another method) on each element of array called names:

names.each { |randomvariablename| puts "Hello #{randomvariablename.capitalize}" }

Using the select method to pickup all the odd numbers from an array y:

y.select { |number| number.odd? } # selects the value and returns it only if the condition is met

To join the elements of an array named p:

p.join

To join the elements of an array with space in between each element:

p.join(" ")

To join the elements of an array with dash in between each element:

p.join("-")

### Lecture 28 - Hashes (or Dictionaries)
`my_details = {'name' => 'Caleb', 'favorite_color' => 'red'}` = forms the hash

`my_details["favorite_color"]`

`my_hash = {a: 1, b: 2, c: 3}`

`my_hash[:b]` = returns 2

puts my_hash[:b]

`my_hash[:d] = 7` = assigns a d key with a value of 7 and adds to my_hash

`my_hash[:name] = "Caleb"` = assigns a "name" key with a value of "Caleb" and adds to my_hash

`my_hash.delete(:name)` = deletes the key/value pair stored at "name".

`numbers.each { |k, v| puts v }` = iterates through the hash with k = key and v = value and outputs the value.

`numbers.each { |k, v| puts "The key is #{k} and the value is #{v}." }` 

`numbers.each { |k, v| numbers.delete(k) if v > 3 }`

`numbers[:d] = 5`
`numbers[:e] = 9`
`numbers.select { |k, v| v.odd? }`
`numbers.select { |k, v| numbers.delete(k) if v.odd? }`

Notes from the course...

To create a hash called my_details include the elements within { }:

my_details = {'name' => 'mashrur', 'favcolor' => 'red'}

To access the value and notify me what favcolor is:

my_details["favcolor"]

Alternate syntax to create key, value pairs in hash:

myhash = {a: 1, b: 2, c: 3, d: 4}

To access the value for key c above:

myhash[:c]

To add a key,value pair to the hash above:

myhash[:d] = 7

myhash[:name] = "Mashrur"

To delete a key,value pair simply delete the key:

myhash.delete(:d)

To iterate through a hash using .each method and print out value:

myhash.each { |somekey, somevalue| puts somevalue }

To iterate through a hash using .each method and print out both key and value in friendly format:

myhash.each { |somekey, somevalue| puts "The key is #{somekey} and the value is #{somevalue}" }

To iterate through and delete a items from a hash based on a condition (in the condition below if the value is greater than 3:

myhash.each { |k, v| myhash.delete(k) if v > 3 }

Use select method to display items only if value of the item is odd

myhash.select { |k, v| v.odd? }

### Lecture 30 - Ruby Style Guide
Link for style guide:

[bbatsov/ruby-style-guide](github.com/bbatsov/ruby-style-guide)

class names: `CamelCase`

file names: `snake_case`

`this_is_snake_case.rb`

Create and assign a variable with a long name like this: `my_new_variable = "Create long named variables like this"`

### from `tryruby.org`
`books.values.each { |rate| ratings[rate] += 1 }` = counts how many ratings of each value type were given in the books hash. MB



### Introduction to Object Oriented Programming - Text directions, refs and code - Lecture 38  

Object-oriented programming (OOP) is a programming paradigm that uses objects and their interactions to design and program applications

- Allows the program to block off areas of code that perform certain tasks independently of other areas in the application.

_*Encapsulation*_ - concept of blocking off areas of code and not making it available to the rest of the program

_*Abstraction*_ - is simplifying a complex process of a program, an enterprise software solution for example by modeling classes appropriate for it

_*Inheritance*_ - is used where a class inherits the behavior of another class. The class being inherited from is referred to as the _superclass_, the one inheriting is calle a _*subclass*_

_*Polymorphism*_ - is when a class inherits the behaviors of another class, but has the ability to not inherit everything and change some of it’s inherited behaviors. For example to write a method that does something differently from the inherited method

_*Classes*_ - It is a blueprint that describes the state and behavior that the objects of the class all share. A class can be used to create many objects. Objects created at runtime from a class are called instances of that particular class.

Example of a user class

```
class User
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end

  def run
    puts "Hey I'm running"
  end

  def self.identify_yourself
    puts "Hey I am a class method"
  end
end
```

Make a new user  
`user = User.new("mashrur", "mashrur@example.com")`

`user.run`

`User.identify_youself` # to run this class method you don't need an instance of user you can directly call the class User

###Inheritance and Modules - Text directions, references and code
Section 2, Lecture 40
user class with destructable module:

module Destructable

def destroy(anyobject)

puts "I will destroy the object"

end

end

class User

include Destructable

attr_accessor :name, :email

def initialize(name, email)

@name = name

@email = email

end

def run

puts "Hey I'm running"

end

def self.identify_yourself

puts "Hey I am a class method"

end

end

class Buyer < User

def run

puts "Hey I'm not running and I'm in buyer class"

end

end

class Seller < User

end

class Admin < User

end