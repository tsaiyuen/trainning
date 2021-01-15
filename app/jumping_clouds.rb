require 'pry-byebug'
# There is a new mobile game that starts with consecutively numbered clouds. 
# Some of the clouds are thunderheads and others are cumulus. 
# The player can jump on any cumulus cloud having a number that is equal to the number of the current cloud 
# plus 1 or 2. The player must avoid the thunderheads. Determine the minimum number of jumps it will take 
# to jump from the starting postion to the last cloud. It is always possible to win the game.
# For each game, you will get an array of clouds numbered 0 if they are safe or 1 if they must be avoided
# Example: a = [0,1,0,0,0,1,0]
# Index the array from 0....6 . The number on each cloud is its index in the list so the player must avoid 
# the clouds at indices 1 and 5. They could follow these two paths: 0-2-4-6 or 0-2-3-4-6 . 
# The first path takes 3 jumps while the second takes 4. Function should return 4.

n = "7"
c = "0 1 0 0 0 1 0"

puts "Inform the number of clouds"
n = gets.to_i
puts "Inform the clouds number like this: 0 1 1 0 1"
c = gets.rstrip.split(' ').map(&:to_i)

#binding.pry

jumps = 0
current = 0
  
while current<c.length 
  if current+2 < c.length && c[current+2] == 0
    jumps += 1
    current +=2
  elsif current+1 < c.length && c[current+1] == 0
    jumps +=1
    current +=1
  else
    current+=1
  end
end
puts jumps

    