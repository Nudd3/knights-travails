# frozen_string_literal: false

require_relative 'board'
require_relative 'knight'
require_relative 'game'

g = Game.new

puts "knigth_moves([0,0], [1,2]) ==  #{g.knight_moves([0, 0], [1, 2])}"
puts "\n\n"
puts "knigth_moves([0,0], [3,3]) ==  #{g.knight_moves([0, 0], [3, 3])}"
puts "\n\n"
puts "knigth_moves([3,3], [0,0]) ==  #{g.knight_moves([3, 3], [0, 0])}"
puts "\n\n"
puts "knigth_moves([3,3], [4,3]) ==  #{g.knight_moves([3, 3], [4, 3])}"