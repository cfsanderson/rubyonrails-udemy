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

  # this is the long way of doing a getter/setter - see line 3 for Ruby magic syntax
  # def get_name #getter method
  #   @name
  # end

  # def set_name=(name) # setter method
  #   @name = name    
  # end
end

class Buyer < User
  def id
    puts "I'm a buyer"
  end
end

class Seller < User
  def id
    puts "I'm a seller"
  end
end

class Admin < User
  def id
    puts "I'm an admin"
  end
end

user1 = User.new("John", "johnnyboy@yourmom.com")
user2 = User.new("Cheryl", "cheerycheryl@yourmom.com")

# buyer1
# puts User.ancestors
puts "Thanks #{user1.name}. We'll send an email to #{user1.email}."

user1.name = user2.name
user1.email = user2.email

puts "Thanks #{user1.name}. We'll send an email to #{user1.email}."

user1.name = "Caleb Frost"
user1.email = "caleb@spatialnetworks.com"

puts "Thanks #{user1.name}. We'll send an email to #{user1.email}."

# building new subclasses that inherit from the user class

buyer1 = Buyer.new("Jimi Hendrix", "jimi@example.com")
puts "#{buyer1.run?} and #{buyer1.id}."

seller1 = Seller.new("Janis Joplin", "janis@example.com")
puts "#{seller1.run?} and #{seller1.id}."

admin1 = Admin.new("Jerry Garcia", "jerry@example.com")
puts "#{admin1.run?} and #{admin1.id}."

puts User.ancestors
puts
puts Buyer.ancestors # notice that it lists User as an ancestor
