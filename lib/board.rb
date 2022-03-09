# frozen_string_literal: false

require_relative 'knight'

# board class
class Board
  attr_accessor :visited

  def initialize(start)
    @root = start
    @visited = []
  end

end
