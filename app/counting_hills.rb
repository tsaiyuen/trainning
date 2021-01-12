require 'pry-byebug'
puts "How many steps did you make?"
steps = gets.chomp.to_i
puts "Describe your journey with 'U' and 'D'"
path = gets.chomp.split.join("").split(//)
# the first split is just case user input journey with spaces
# returns ["0", "1", "1", "0"]
path.map! do |h|
  h.gsub("D","-1").gsub("U","1").to_i
end

# -1 -1 1 1 -1 -1 1 -1 1 1 1 -1
level = 0
hill = 0
path.each do |v|
  level += v
  if level < 0
    hill += 1
  end
end

puts "You walked through #{hill} hills."