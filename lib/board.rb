# frozen_string_literal: false

require_relative 'knight'
# board class
class Board
  attr_accessor :visited

  def initialize(start)
    @root = start
    @visited = []
  end

  # Find the path from the @root to the destination using bfs
  # returns the destination node
  def find_path_bfs(destination)
    queue = [@root]
    until queue.empty?
      current = queue.shift
      break if current.location == destination

      @visited << current
      current.create_children
      current.children.each { |child| queue << child unless @visited.include?(child) }
    end
    current
  end

  # Find what locations the knight has stopped on
  # end_node is a knight
  def find_stops(end_node)
    parents = [end_node.location]
    until end_node.parent.nil?
      parent = end_node.parent
      end_node = parent
      parents << end_node.location
    end
    parents.reverse
  end
end
