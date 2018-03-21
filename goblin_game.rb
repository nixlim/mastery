@counter = 0

def move
  puts "Please enter your selection"
  player_move = gets.chomp()
  analyse(player_move)
end

def analyse(player_move)
  if player_move == "right"
    puts "You are dead! Goblin has you!"
  elsif player_move == "left"
    puts "You are dead! Werewolf has you!"
  elsif player_move == "forward"
    if @counter == 0
      puts "You are still alive! Please make your next move - left, right or forward!"
      @counter += 1
      move()
    else
      puts "You have won!"
    end
  else
    puts "Please enter 'left', 'right' or 'forward' to move."
    move()
  end
end

puts "Welcome, Player One! You are in a dungeon with many dangers. You are facing forward. You can move 'right', 'left' and 'forward'."

move()


