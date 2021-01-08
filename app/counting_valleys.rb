# An avid hiker keeps meticulous records of their hikes. During the last hike 
# that took exactly "steps" steps, for every step it was noted if it was an uphill,"U" ,
# or a downhill, "D" step. Hikes always start and end at sea level, and each step
# up or down represents a 1 unit change in altitude. We define the following
# terms:
# Function Description
# Complete the countingValleys function in the editor below.
# countingValleys has the following parameter(s):
# int steps: the number of steps on the hike
# string path: a string describing the path
# Returns
# int: the number of valleys traversed
# Input Format
# The first line contains an integer "steps", the number of steps in the hike.
# The second line contains a single string "path", of "steps" characters that describe
# the path.
# 8
# UDDDUDUU
# output = 1

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
valley = 0
path.each do |v|
  level += v
  if level == 0
    valley += 1
  end
end

puts valley-1




