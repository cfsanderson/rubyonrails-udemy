# - [X] 1. Create a dictionary (hash) with 10 city names, where the city name would be a string and the key, and the area code would be the value.
# - [ ] 2. Get input for the city name from the user (hint: use gets.chomp method)
# - [ ] 3. Display the city names to the use which are available in the dictionary
# - [ ] 4. Display area code based on user's city choice
# - [ ] 5. Loop - keep the program running and prompt the user for new city names to lookup.
# - [ ] 6. Method to look up area code, this will take in a has of the dictionary and the city name and will output area code
# - [ ] 7. Method to display just city names

dial_book = {
  "bradenton" => "941",
  "tampa" => "813",
  "clearwater" => "727",
  "orlando" => "407",
  "westpalmbeach" => "561"
}

# method to display city names
# method to get area code, dial_book, and the city name.

loop do 
  puts "Do you want to lookup a city name? (y/n)"
  answer = gets.chomp
  if answer != "Y"
    break
  end
end