# frozen_string_literal: false

require_relative 'knight'

# board class
class Board

  def create_children(knight)
    knight.possible_moves.each do |location|

      child = Knight.new(location)
      knight.children << child

    end
  end


end