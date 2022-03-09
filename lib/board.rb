# frozen_string_literal: false

require_relative 'knight'

# board class
class Board
  attr_accessor :visited

  # Find all children to a knight(parent)
  def dcreate_children(parent)

    parent.moves.each do |location|

      child = Knight.new(location)
      parent.children << child
    end
  end

  def build_graph(start)

    start = Knight.new(start)
    start.create_children
    
    create_children(parent)

    parent.children.each do |child|
      create_children(parent)
      build_graph(child)
    end
  end
end
