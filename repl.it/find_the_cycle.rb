# Find the Cycles
# Both Trees and Graphs consist of Nodes pointing to each other. In fact, a tree is just a type of graph that contains no cycles. A cycle means you can leave a node along one path and return to it on a different path. Can you determine if there are any cycles in a graph?

# No Cycles in this Graph:

# But there are multiple Cycles in this Graph:

# Challenge
# Return true if the graph has a cycle and false otherwise.

# Example
# graph = {
#   0=>[2], 
#   1=>[4], 
#   2=>[0, 5, 3], 
#   3=>[5, 2], 
#   4=>[5, 1], 
#   5=>[4, 2, 3]
# }

# puts graph_cycle?(graph)
# # => true

def graph_cycle?(graph)
  # write your code here
  queue = [0]
  visited = []
  
  while queue.size != 0
    head = queue.shift
    visited << head
    
    if graph[head]
      not_visited = graph[head].reject { |node| visited.include? node }
      return true if not_visited.size < (graph[head].size - 1)
      
      visited += not_visited
      queue += not_visited
    end
  end
  
  false
end

puts graph_cycle?({
  0=>[2], 
  1=>[4], 
  2=>[0, 5, 3], 
  3=>[5, 2], 
  4=>[5, 1], 
  5=>[4, 2, 3]
})
# => true

puts graph_cycle?({
  0=>[2], 
  1=>[2], 
  2=>[0, 1, 3, 4, 5], 
  3=>[2], 
  4=>[2]
})
# => false
