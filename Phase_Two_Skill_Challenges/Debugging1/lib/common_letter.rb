def get_most_common_letter(text)
  counter = Hash.new(0)
  text.delete!(" ")
  text.chars.each do |char|
    counter[char] += 1
  end

  counter.to_a.sort_by { |k, v| v }.reverse[0][0]
  # p counter.to_a
  # p counter.to_a.sort_by { |k, v| }
  # p counter.to_a.sort_by { |k, v| v }
  # p counter.to_a.sort_by { |k, v| v }.reverse!
  # p counter.to_a.sort_by { |k, v| v }.reverse![0][0]
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
#
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

#------------------------------------------------------------------------------
# ORIGINAL CODE

# def get_most_common_letter(text)
#   counter = Hash.new(0)
#   text.chars.each do |char|
#     counter[char] += 1
#   end
#   counter.to_a.sort_by { |k, v| v }[0][0]
# end

# Intended output:
#
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
# -----------------------------------------------------------------------------

=begin
Discovery Debugging

1. p counter.to_a => returns arrays of array with the chars
and how many times they occured in the text as key - value pairs
=>  [["t", 3], ["h", 3], ["e", 4], [" ", 8], ["r", 4], ["o", 7], 
    ["f", 4], [",", 2], ["i", 2], ["s", 1], ["n", 1], ["!", 1]] =>  space is most common, then 'o'

3. text.delete!(" ") to remove blank spaces

4. p counter.to_a.sort_by { |k, v| } 
=> [["!", 1], ["h", 3], ["e", 4], ["r", 4], ["o", 7], 
   ["f", 4], [",", 2], ["i", 2], ["s", 1], ["n", 1], ["t", 3]]

5. [["!", 1], ["n", 1], ["s", 1], ["i", 2], [",", 2], ["t", 3], ["h", 3], ["f", 4], ["r", 4], ["e", 4], ["o", 7]]
=> [["!", 1], ["n", 1], ["s", 1], ["i", 2], [",", 2], ["t", 3], ["h", 3], 
   ["f", 4], ["r", 4], ["e", 4], ["o", 7]]

6. p counter.to_a.sort_by { |k, v| v }.reverse![0][0]
calling a reverse method on the sorted array allows us to keep the indexes[0][0]

7. now it returns 'o' as the most common letter 
=end

# Alternatively we can change the indexes for [-1][0] and exclude the reverse method for the same output
