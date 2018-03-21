player_1 = rand(1..6)
player_2 = rand(1..6)
consequtive_rounds_p1 = 0
consequtive_rounds_p2 = 0
while consequtive_rounds_p1 < 2 && consequtive_rounds_p2 < 2
  player_1 + player_1 > player_2 + player_2 ? consequtive_rounds_p1 += 1 : consequtive_rounds_p2 += 1
  puts consequtive_rounds_p1, consequtive_rounds_p2
end

puts consequtive_rounds_p1 == 2 ? "Player 1 Won" : "Player 2 Won"
