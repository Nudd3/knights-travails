# frozen_string_literal: false

require_relative 'knight'

# board class
class Board

  def create_children(parent)
    parent.possible_moves.each do |location|
      child = Knight.new(location)
      parent.children << child
    end
  end


end