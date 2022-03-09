# frozen_string_literal: false

require_relative 'knight'

# board class
class Board
  attr_accessor :visited

  def initialize(start)
    @root = start
    @visited = []
  end

  def find_path_bfs(destination)
    queue = [@root]
    until queue.empty?
      current = queue.shift
      return current if current.location == destination

      @visited.push(current)
      current.create_children
      
      current.children.each do |child|
        queue << child unless @visited.include?(child)
      end
    end
  end
end
