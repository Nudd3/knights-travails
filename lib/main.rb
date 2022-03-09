# frozen_string_literal: false

require_relative 'board'
require_relative 'knight'

board = Board.new
#puts board.knight_moves([3, 3], [4, 3])
puts board.knight_moves([0, 0], [3, 4])