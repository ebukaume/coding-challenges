# Is it a Search Tree?
# Given a binary tree, can you determine if it is a proper Binary Search Tree?

# In a binary search tree, every descendant to the right of node P must be greater than P, and every descendant to the left of P must be less than P.

# The input will be given as a list, as in the previous exercises.

# Here's a good Binary Search Tree:

# ...and here's a bad one:


# This tree is not a proper BST for 2 reasons:
# - The 8 is smaller than the 9, even though it is in a right subtree of 9.
# - The 6 is smaller than the 7, even though it is in a right subtree of 7.

# Challenge
# Return true if the given tree is a proper binary search tree, and false otherwise.




class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end
  
def array_to_tree(array, i=0)
  return nil if i >= array.length || array[i] == 0
  
  node = Node.new(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)
  
  node
end

def search_tree?(arr)
  # write your code here
  # Build tree is array was given
  transformed = arr.is_a?(Array) ? array_to_tree(arr) : arr
  
  # Is built tree a BST?
  def is_bfs?(tree, min = -Float::INFINITY, max = Float::INFINITY)
    return true if tree.nil?
    return false if tree.data <= min || tree.data > max
    return is_bfs?(tree.left, min, tree.data) && is_bfs?(tree.right, tree.data, max)
  end
  
  is_bfs?(transformed)
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false