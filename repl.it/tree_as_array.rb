=begin
A Tree in an Array
To store a Binary Tree in an Array, we just need to determine the order  that we store the Nodes in. A good order is "breadth-first" where we  store the items in order top-down and left-to-right of the tree.

Here's a tree represented as an array:

And this is the tree 'unfolded':

Notice that 5 only has one child Node, so the other child is represented as 0 in the above array. This is OK as long as we don't need to store  actual 0 values.

Challenge

The input for this challenge will provide an array of numbers in the above "breadth-first" format, and use 0's for non-nodes. 
Can you print out the sum of the Leftmost side of the Tree?

Tip: A number located at position i in an array will have it's left child located at the position 2i+1 in the array. 

    -source url (https://repl.it/student/submissions/6772636)
=end


def leftmost_nodes_sum(array)
    # your code here
    root = 0
    sum = 0
    until 2**root - 1 >= array.size
      sum += array[2**root - 1]
      root += 1
    end
    return sum
end
  
def leftmost_nodes_sum_recursive(array, sum = 0)
    # your code here
    def helper(array, index = 0)
      return array[index] if array[2*index+1].nil?
      sum =+ helper(array, 2*index+1) + array[index]
      return sum
    end
    helper(array)  
end
  
puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# 11
puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9, 10, 12, 11, 18])
# 21
  
puts leftmost_nodes_sum_recursive([2, 7, 5, 2, 6, 0, 9])
# 11
puts leftmost_nodes_sum_recursive([2, 7, 5, 2, 6, 0, 9, 10, 12, 11, 18])
# 21