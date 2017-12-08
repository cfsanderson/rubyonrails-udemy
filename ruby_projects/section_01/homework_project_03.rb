# - [X] 1. Create a dictionary (hash) with 10 city names, where the city name would be a string and the key, and the area code would be the value.
# - [x] 2. Get input for the city name from the user (hint: use gets.chomp method)
# - [x] 3. Display the city names to the user which are available in the dictionary
# - [x] 4. Display area code based on user's city choice
# - [x] 5. Loop - keep the program running and prompt the user for new city names to lookup.
# - [x] 6. Method to look up area code, this will take in a hash of the dictionary and the city name and will output area code
# - [x] 7. Method to display just city names

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

file_book = {
  "fileton" => "file1",
  "fampa" => "file3",
  "clearfile" => "file7",
  "filando" => "file7",
  "file palm beach" => "file1",
  "file petersburg" => "file1",
  "fileahassee" => "file0",
  "filesonville" => "file4",
  "st. filestine" => "fiel4",
  "fileiami" => "file5"
}
# adds the "titleize" method to strings
class String 
  def titleize
    split(/(\W)/).map(&:capitalize).join
  end
end

# method to display city names
def display_cities(some_hash)
  some_hash.each { |k, v| puts k.titleize }  
end

# method to get area code, dial_book, and the city name.
def area_code_lookup(some_hash, key)
  some_hash[key]
end

loop do 
  puts "Do you want to lookup an area code? (y/n)"
  get_answer = gets.chomp.downcase

  if get_answer != "y"
    puts "See, ya"
  else
    puts "Do you want the regular, or file names?: (regular/file)"
    prompt = gets.chomp.downcase
    
    if prompt == "regular"
      puts display_cities(dial_book)

      puts "Which one can I look up for you?"
      get_city = gets.chomp

      response = area_code_lookup(dial_book, get_city.downcase)

      puts "Thanks, let me look up #{get_city.titleize} for you."
    
      if response.nil?
        puts "I don't know that city, sorry."
      else
        puts "The area code for #{get_city.titleize} is #{response}"
      end
    else prompt == "file"
      puts display_cities(file_book)

      puts "Which one can I look up for you?"
      get_city = gets.chomp

      response = area_code_lookup(file_book, get_city.downcase)

      puts "Thanks, let me look up #{get_city.titleize} for you."
    
      if response.nil?
        puts "I don't know that city, sorry."
      else
        puts "The area code for #{get_city.titleize} is #{response}"
      end
    end
  end
end

# loop do 
#   puts "Do you want to lookup an area code? (y/n)"
#   get_answer = gets.chomp.downcase

#   if get_answer == "y"
#     puts "Do you want the regular, or file names?: (regular/file)"
#     prompt = gets.chomp.downcase
    
#     if prompt == "regular"
#       puts display_cities(dial_book)

#       puts "Which one can I look up for you?"
#       get_city = gets.chomp

#       response = area_code_lookup(dial_book, get_city.downcase)

#       puts "Thanks, let me look up #{get_city.titleize} for you."
    
#       if response.nil?
#         puts "I don't know that city, sorry."
#       else
#         puts "The area code for #{get_city.titleize} is #{response}"
#       end
#     end
#   elsif get_answer == "n"
#     puts "Thank you. Goodbye."
#     break
#   else
#     puts "I'm sorry, I don't understand."
#   end
# end

