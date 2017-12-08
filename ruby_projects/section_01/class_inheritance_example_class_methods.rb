# A class method can be called directly on the class without instantiating any objects
class User
  
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
# puts user1.identify_yourself
puts user1.name