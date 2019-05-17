#  Binary Search Tree

# The Binary Search Tree is a a Binary Tree which stores keys in a sorted manner. 
# Every node's key is smaller than all the key's in the node's left subtree and greater than all the key's in the nodes right subtree. 



# Inserting Elements in the Tree

# Insertion and Search can usually be done very quickly in a binary Tree.
#  The smallest and largest elements in the tree are easy to find. 
#  It's simple to go from one element to the next in the tree and to through the entire Tree in order.


# Challenge

# You will be given an array of numbers as input. 
# Insert the numbers (in order) one-at-a-time into a binary search tree. 
# Then return a string with the tree in pre-order (You can use the pre-order function that you wrote in the previous lesson).

class Node
    attr_reader :data
    attr_accessor :left, :right
  
    def initialize(data)
      @data = data
    end
end
  
def binary_search_tree(array)
# your code here
root = Node.new(array[0])

    # Helper method for building the binary search tree
    def build_tree(node, new_data)
        if node.data.nil?
        node.data = new_data
        return
        end
        if node.data < new_data
        if node.right.nil? 
            node.right = Node.new(new_data)
            return
        end
        build_tree(node.right, new_data)
        end
        if node.data > new_data
        if node.left.nil?
            node.left = Node.new(new_data)
            return
        end
        build_tree(node.left, new_data)
        end
        return
    end

    # Convert array to binary search tree
    array.each do |val|
        build_tree(root, val)
    end

    # Read tree in pre-order
    def pre_order(node)
        return "" if node.nil?
        result = "#{node.data} "
        result += pre_order(node.left)
        result += pre_order(node.right)
    end

    return pre_order(root).strip
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"
  