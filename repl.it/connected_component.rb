# Connected Components
# Are all the components connected on the given Graph?

# A graph is considered one connected component if every node is connected along a path with every other node.

# The following graph is not one connected component, since the 1 and 4 cannot be reached from the 0,2,3 and 5.

# Challenge
# Given a graph, return true if the graph is one connected component, and false otherwise.

# Example
# graph = {
#   0 => [2], 
#   1 => [4], 
#   2 => [0, 5, 3], 
#   3 => [5, 2], 
#   4 => [5, 1], 
#   5 => [4, 2, 3]
# }

# puts connected_graph?(graph)
# # => true

def connected_graph?(graph, node = 0, to_visit = graph.keys)
  # write your code here
  graph[node].each{ |k| connected_graph?(graph, k, to_visit) if to_visit.delete(k) }
  return to_visit.empty?
end

puts connected_graph?({
  0 => [2], 
  1 => [4], 
  2 => [0, 5, 3], 
  3 => [5, 2], 
  4 => [5, 1], 
  5 => [4, 2, 3]
})
# => true

puts connected_graph?({
  0 => [1, 2], 
  1 => [0, 2], 
  2 => [0, 1, 3, 4, 5], 
  3 => [2, 4], 
  4 => [3, 2], 
  5 => [2]
})
# => true