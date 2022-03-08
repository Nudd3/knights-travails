# frozen_string_literal: false

require_relative 'knight'

# board class
class Board
  attr_accessor :visited

  def initialize
    @visited = []
  end

  def build_graph(parent)
    return if parent.nil?

    create_children(parent)

    parent.children.each do |child|
      create_children(parent)
      build_graph(child)
    end
  end

  # Find all children to a knight(parent)
  def create_children(parent)
    @visited << parent.location

    parent.possible_moves.each do |location|
      next if @visited.include? location

      child = Knight.new(location)
      parent.children << child
    end
  end
end
