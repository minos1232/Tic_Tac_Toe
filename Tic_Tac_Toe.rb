# Tic Tac Toe
class TicTacToe
  attr_accessor :game_board
  def initialize
    @game_board = Array.new(9, " ")
  end

  def display_board
    puts "\n"
    puts " #{game_board[0]} | #{game_board[1]} | #{game_board[2]} "
    puts "---|---|---"
    puts " #{game_board[3]} | #{game_board[4]} | #{game_board[5]} "
    puts "---|---|---"
    puts " #{game_board[6]} | #{game_board[7]} | #{game_board[8]} "
    puts "\n"
  end
end
game = TicTacToe.new
game.display_board