# Insertion Sort Itself
# In Insertion Sort Part 1, you sorted one element in the array. Using the same approach repeatedly, can you sort an entire unsorted array?

# Output
# In this challenge print the array every time an element is “inserted” into the array in (what is currently) its correct place (even if it doesn't move). Begin printing from the second element and on.

# Challenge
# Can you print the steps of Insertion Sort?

# Example
# sort_itself([1, 4, 3, 6, 9, 2])
# # => 1 4 3 6 9 2
# #    1 3 4 6 9 2
# #    1 3 4 6 9 2
# #    1 3 4 6 9 2
# #    1 2 3 4 6 9


def sort_itself(array)
# write your code here
def sorted?(array, idx)
    array[idx] > array[idx - 1]
end

def sort_value(array, index)
    index.downto(1) do |idx|
    array[idx], array[idx - 1] = array[idx - 1], array[idx] if array[idx] < array[idx - 1]
    end
    array
end

1.upto(array.length - 1) do |idx|
    sort_value(array, idx) unless sorted?(array, idx)
    puts array.join(" ")
end
end

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9