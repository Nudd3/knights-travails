# frozen_string_literal: false

# Knight class.
class Knight
  attr_accessor :location, :moves, :children

  def initialize(location)
    @location = location
    @children = create_children
  end

  def create_children
    all_moves = [
      [1, 2], [1, -2], [-1, 2], [-1, -2], [2, 1], [2, -1], [-2, 1], [-2, -1]
    ]
    result = []

    all_moves.each do |move|
      new_x = @location[0] + move[0]
      new_y = @location[1] + move[1]
      result << [new_x, new_y] if new_x.between?(0, 7) && new_y.between?(0, 7)
    end
    result
  end

  def to_s
    "Location: #{@location}"
  end
end

k = Knight.new([0,0])
p k.children