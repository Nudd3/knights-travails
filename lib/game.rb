# frozen_string_literal: false

require_relative 'knight'
require_relative 'board'

# Game class
class Game
  def knight_moves(start, destination)
    graph = create_graph(start)
    end_node = graph.find_path_bfs(destination)
    path = graph.find_stops(end_node)
    path.each { |stop| p "#{stop}\n" }

    # Display the path
  end

  # Create the graph, starting from the start location
  def create_graph(start)
    start = Knight.new(start)
    start.create_children
    Board.new(start)
  end

  def show_path; end
end
