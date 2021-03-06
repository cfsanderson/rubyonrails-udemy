# - [X] 1. Create a dictionary (hash) with 10 city names, where the city name would be a string and the key, and the area code would be the value.
# - [x] 2. Get input for the city name from the user (hint: use gets.chomp method)
# - [x] 3. Display the city names to the user which are available in the dictionary
# - [ ] 4. Display area code based on user's city choice
# - [ ] 5. Loop - keep the program running and prompt the user for new city names to lookup.
# - [ ] 6. Method to look up area code, this will take in a hash of the dictionary and the city name and will output area code
# - [ ] 7. Method to display just city names

dial_book = {
  "bradenton" => "941",
  "tampa" => "813",
  "clearwater" => "727",
  "orlando" => "407",
  "west palm beach" => "561",
  "st. petersburg" => "941",
  "tallahassee" => "850",
  "jacksonville" => "904",
  "st. augustine" => "904",
  "miami" => "305"
}

# adds the "titleize" method to strings
class String 
  def titleize
    split(/(\W)/).map(&:capitalize).join
  end
end

# method to display city names
def display_cities(dial_book)
  dial_book.each { |k, v| puts k.titleize }  
end

# method to get area code, dial_book, and the city name.

loop do 
  puts "Do you want to lookup a city name? (y/n)"
  get_answer = gets.chomp.downcase
  if get_answer == "y"
    puts "Here are the cities I know about: "
    puts display_cities(dial_book)

    puts "Which one can I look up for you?"
    get_city = gets.chomp

    puts "Thanks, let me look up #{get_city.titleize} for you."
    
    # if get_city == dial_book  
    #   puts ""
    #   break
    # end
  elsif get_answer == "n"
    puts "Thank you. Goodbye."
    break
  else
    puts "I'm sorry, I don't understand."
  end
end

