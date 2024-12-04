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

  def player_move(player)
    loop do
      print "#{player}, choose a position (1-9): "
      position = gets.chomp.to_i - 1
      if valid_move?(position)
        game_board[position] = player
        break
      else
        puts "Invalid move. Try again."
      end
    end
  end

  def valid_move?(position)
    position.between?(0, 8) && game_board[position] == " "
  end

  def full_board?
    !game_board.include?(" ") 
  end

  def play
    puts "Welcome to Tic Tac Toe!"
    display_board
    current_player = "X"

    loop do
      player_move(current_player)
      display_board

      if full_board?
        puts "It's a draw!"
        break
      else
        current_player = current_player == "X" ? "O" : "X"
      end
    end
  end
end

game = TicTacToe.new
game.play