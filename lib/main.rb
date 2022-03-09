# frozen_string_literal: false

require_relative 'board'
require_relative 'knight'
require_relative 'game'

g = Game.new

g.knight_moves([3,3],[4,3])