# Given an array of integers representing the color of each sock, determine how many pairs of 
# socks with matching colors there are. For example, there are n = 7 socks with colors ar = [1,2,1,2,1,3,2]. 
# There is one pair of color 1 and one of color 2. There are 3 socks left, onde of each color.
# So the answer is 2 pairs.

# Complete the sockMerchant function in the editor below. It must return an integer representing the number
# of matching pairs of socks that are available.

# Sample Input 
# (first line is an integer wuth the number of socks, second line contain n space-separeted integers describing 
# the colors of the socks)
# 9
# 10 20 20 10 10 30 50 10 20
# Sample Output
# 3 



#def sockMerchant(n, ar)
pair = 0
puts "How many socks do you have?"
n = gets.chomp.to_i
puts "Tell me the socks numbers like this: 1 1 3 2 3 2"
arr = gets.chomp.split.sort!
new_arr = arr.chunk_while {|a,b| a == b}.to_a
#[["10", "10", "10"], ["20", "20"], ["30", "30"]]#
new_arr.each do |s|
  r = s.length/2
  pair += r.to_i
end
puts "You have #{pair} pairs of socks"
#end

# .split returns an array from string input
# .sort! arrange the array sorting the informations
# .chunk_while returns an array of arrays with simmilar items
