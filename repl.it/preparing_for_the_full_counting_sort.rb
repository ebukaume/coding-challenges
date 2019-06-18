# Prepare for Full Counting Sort
# In the previous challenge, it was easy to print all the integers in order, since you did not need to access the original list. Once you had the frequencies of each integer, you could just print each integer in order the correct number of times. However, if there is other data associated with an element, you will need to access the original element itself.

# In the final counting sort challenge, you will need to print the data associated with each integer. This means you will go through the original array to get the data, and then use some “helper arrays” to determine where to place everything in a sorted array.

# You will be given a list that contains both integers and strings. In this challenge you just care about the integers. For every value i from 0 to 99, can you output L, the number of elements that are less than or equal to i?

# Input Format

# array - an array where each position contain an integer x, and a string, s.

# Output Format

# Output L for all numbers from 0 to 99 (inclusive).

# Challenge
# For every value i from 0 to 99, can you return an array L, with the number of elements that are less than or equal to i?

# Example
# p full_counting_sort_prep(["4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# # => [1, 3, 5, 6, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]


def full_counting_sort_prep(array)
  # write your code here
  process_frequency_count(get_frequency_count(array))
end

def process_frequency_count(counts)
  counts.length.times { |index| counts[index] += counts[index - 1] unless index.zero? }
  counts
end

def get_frequency_count(array, range = 100)
  counts = array.each_with_object(Array.new(range, 0)) { |element, count| count[element.to_i] += 1 }
end

p full_counting_sort_prep(["4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => [1, 3, 5, 6, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
