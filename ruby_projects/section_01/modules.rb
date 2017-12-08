# A module is similar to a class
# A collection of behaviors that other classes can use via mixins
# Cannot creat an object from a module
module Destructable
  def destroy(anyobject)
    puts "I will destroy this object."
  end
end

class User
  include Destructable
  attr_accessor :name, :email
  def initialize(name, email)
    # "@" signifies that this is an instance variable
    @name = name 
    @email = email
  end

  def run?
    puts "Hey, I'm running. My name is #{@name}"
  end

  def self.identify_yourself
    puts "I am a class method"
  end
end


User.identify_yourself
# able to call a method from the class without instantiating a new user object

user1 = User.new("Caleb", "calebsanderson@example.com")

user1.destroy("myname")
puts user1.name