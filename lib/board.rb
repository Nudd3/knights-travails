# frozen_string_literal: false

require_relative 'knight'

# board class
class Board

  @visited = []

  def build_graph

  end

  # Find all children to a knight(parent)
  def create_children(parent)

    parent.possible_moves.each do |location|
      unless @visited.include? location
        child = Knight.new(location)
        parent.children << child
        visited << location
      end
    end
  end


end