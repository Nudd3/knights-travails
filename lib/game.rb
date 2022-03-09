# frozen_string_literal: false

require_relative 'knight'
require_relative 'board'

# Game class
class Game
  # Finds and prints the shortest path for a knight to travel from start to destination
  def knight_moves(start, destination)
    graph = create_graph(start)
    end_node = graph.find_path_bfs(destination)
    stops = graph.find_stops(end_node)
    show_path(stops)
  end

  # Create the graph, starting from the start location
  def create_graph(start)
    start = Knight.new(start)
    start.create_children
    Board.new(start)
  end

  # Shows the coordinates that the knight has visited on the path
  def show_path(stops)
    puts "You made it in #{stops.length - 1} moves! Here's your path:"
    stops.each { p _1 }
  end
end
