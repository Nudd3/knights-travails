# frozen_string_literal: false

require_relative 'board'
require_relative 'knight'

k = Knight.new([0,0])
b = Board.new

b.create_children(k)

p "Knight Location: #{k.location}"
puts "\n"
p "Knight Possble Moves: #{k.moves}"
puts "\n"
p "Knight Children:"
k.children.each do |child|
  puts "Location: #{child.location}"
  puts "Moves: #{child.moves}"
  puts "\n"
end

