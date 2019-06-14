# More Practice

# Hash and Sets are useful in a wide variety of challenges. Below is another practice challenge.

# Challenge
# Given a list of numbers, can you find all the pairs of numbers whose sum equals k?

# Input

# The provided function takes 2 parameters: an array array, and the special number k. 

# Output

# Return an Array with the pairs of numbers. Print each pair with the first number followed by the second, and print all the pairs in the order that the second number appears in the list.

# Sample Input/Output
# Example
# p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# # => [[1, 11], [9, 3]]

# 12 is the special number. There are 2 pairs with that sum: 1 & 11 and 9 & 3. 11 appears before 3 in the input, so that pair is printed first.

# Full Credit
# Solve the problem with only one iteration through the numbers.


def find_pairs(array, k)
# write your code here
found_pairs = []
array.each_with_object([]) do |element, pairs|
    element_compliment = k - element
    next if found_pairs.include?(element)
    if array.include?(element_compliment)
    pairs << [element, element_compliment]
    found_pairs << element << element_compliment
    end
end
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]