# The Full Counting Sort
# In this challenge you need to print the data that accompanies each integer in a list. In addition, if two strings have the same integers, you need to print the strings in their original order. This means your sorting algorithm will need to be stable, i.e. that the original order is maintained for equal elements.
# In the previous challenge, you created a “helper array” that contains information about the starting position of of each element in a sorted array. Can you use this array to help you create a sorted array of the original list?

# Hint: You can go through the original array to access the strings. You can then use your helper array to help determine where to place those strings in the sorted array. Be careful about being one off.

# Details

# You will be given a list that contains both integers and strings. Can you print the strings in order of their accompanying integers? If the integers for two strings are equal, make sure to print them in the order they appeared in the original list.

# Input Format

# array - an array where each position contain an integer x, and a string, s.

# Output Format

# Return an Array with the strings in their correct order. 

# Challenge
# Return an Array with the characters according to the order of their accompanying integers.

# Example
# p full_counting_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# # => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]


def full_counting_sort(array)
  # write your code here
  rearrange_elements(array, process_frequency_count(get_frequency_count(array)))
end

def rearrange_elements(array, counts)
  array_size = array.length
  result = Array.new(array_size, 0)
  
  (array_size - 1).downto(0) do |index|
    number = array[index].to_i
    position = counts[number]
    counts[number] -= 1
    result[position - 1] = array[index].split.last
  end
  result
end

def process_frequency_count(counts)
  counts.length.times { |index| counts[index] += counts[index - 1] unless index.zero? }
  counts
end

def get_frequency_count(array, range = 100)
  counts = array.each_with_object(Array.new(range, 0)) { |element, count| count[element.to_i] += 1 }
end

p full_counting_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]

p full_counting_sort(["6 cd", "6 gh", "4 ij", "6 cd", "6 gh", "4 that", "3 be", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
 