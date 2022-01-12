# Get Your weight name
puts "Greetings human! What is your weight in pounds?"
weight = gets.chomp.to_i
user_weight = weight
base_value = user_weight / 2.2
# puts base_value
puts "What is your age?"
age = gets.chomp.to_i
user_age = age
puts "\n\ Your weight is #{weight} and age #{age}... Let's calculate your water comsuption"
if user_age < 30
  water = base_value * 40
elsif user_age < 55
  water = base_value * 35
else
  water = base_value * 30
end
puts "\n\ Your water consumption is #{(water / 28.3).round(2)}"
