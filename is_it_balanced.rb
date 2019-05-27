# Is it balanced?
# Can you check if a tree is a height-balanced?

# In this challenge, a tree is height-balanced if the maximum and minimum path from any node to a terminal (null node) descendant differs by at most 1.

# For example, this tree is not height-balanced, since the minimum path going down from 5 (to the left) is 2 less than the maximum path from 5 (to 9 and 4).


# Challenge
# Return true if a given tree is height-balanced and false otherwise.



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


def height(tree)
  return 0 if tree == nil
  height(tree.left) + 1
end

# NOTE: I am not sure why this solution works
def balanced_tree?(array_tree)
  # write your code here
  tree = array_to_tree(array_tree)
  (height(tree.left) - height(tree.right)).abs <= 1
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true