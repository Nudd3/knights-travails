# frozen_string_literal: false

require_relative 'knight'

# board class
class Board
  attr_accessor :visited

  # Find all children to a knight(parent)
  def create_children(parent)

    parent.possible_moves.each do |location|

      child = Knight.new(location)
      parent.children << child
    end
  end

  def build_graph(parent)
    return if parent.nil?

    create_children(parent)

    parent.children.each do |child|
      create_children(parent)
      build_graph(child)
    end
  end

  def find_path(start, searched_location, path = [])
    queue = []
    queue << start

    until queue.empty?
      node = queue.shift
      path << node
      if node.location == searched_location
        puts "HELLO"
        return path
      end

      start.children.each do |child|
        queue << child
      end
    end
    return path
  end

  def knight_moves(start, destination)
    @knight = Knight.new(start)
    build_graph(@knight)
    path = find_path(@knight, destination)
  end
end
