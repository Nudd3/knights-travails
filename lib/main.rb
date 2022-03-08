# frozen_string_literal: false

require_relative 'board'
require_relative 'knight'

k1 = Knight.new([0,0])
b1 = Board.new

b1.build_graph(k1)

