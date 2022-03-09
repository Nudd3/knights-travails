# frozen_string_literal: false

# Knight class.
class Knight
  attr_accessor :location, :moves, :children

  ALL_MOVES = [
    [1, 2], [1, -2], [-1, 2], [-1, -2], [2, 1], [2, -1], [-2, 1], [-2, -1]
  ].freeze

  def initialize(location, parent = nil)
    @location = location
    @children = []
    @parent = parent
  end

  def create_children(location = @location)
    ALL_MOVES.each do |move|
      new_x = location[0] + move[0]
      new_y = location[1] + move[1]
      knight_location = []
      knight_location[0] = new_x
      knight_location[1] = new_y
      add_child(knight_location) if new_x.between?(0, 7) && new_y.between?(0, 7)
    end
  end

  def add_child(coordinates)
    @children << Knight.new([coordinates[0], coordinates[1]], self)
  end

  def to_s
    "Location: #{@location}"
  end
end
