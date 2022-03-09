# frozen_string_literal: false

require_relative 'board'
require_relative 'knight'
require_relative 'game'

g = Game.new

g.knight_moves([0, 0], [1, 2])
puts "\n\n"
g.knight_moves([0, 0], [3, 3])
puts "\n\n"
g.knight_moves([3, 3], [0, 0])
puts "\n\n"
g.knight_moves([3, 3], [4, 3])
