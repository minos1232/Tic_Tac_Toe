
game_table = <<~TEXT
  1 | 2 | 3
  ---------
  4 | 5 | 6
  ---------
  7 | 8 | 9
  ---------
TEXT
=begin
puts game_table

puts 'do you want to start first ?(Yes/No)'
starter = gets.chomp

game_table=game_table.sub('5','O')
puts game_table

puts 'what position do you want to play?'
position=gets.chomp
=end
positions = Array(1..9)
puts positions