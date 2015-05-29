# 1. All player pick either Paper ,Rock or Scissors
# 2. Compair paper > rock, rock > scissors, scissors > paper
# 3. Play again?

CHOICES = { 'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors' }
puts "Welcome to Paper, Rock, Scissors game!"

def display_winning_msg(winning_msg)
  case winning_msg
  when 'p' then puts "Papers warps Rock!"
  when 'r' then puts 'Rock mash scissors'
  when 's' then puts "Scissors cuts papers"
  end
end

def display_player_pick(pickup_player_msg)
  case pickup_player_msg
  when 'p' then puts "Player pick Paper"
  when 'r' then puts "Player pick Rock"
  when 'p' then puts "Player pick Scissors"
  end
end

def display_computer_pick(pickup_computer_msg)
  case pickup_computer_msg
  when 'p' then puts "Computer pick Paper"
  when 'r' then puts "Computer pick Rock"
  when 'p' then puts "Computer pick Scissors"
  end
end

loop do 
  begin
    # Player choice 
    puts "Pick up which one you like : (p,r,s)"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)
    # computer choice
    computer_choice = CHOICES.keys.sample
    
  if player_choice == computer_choice
      puts "Game Tie!"
  elsif 
      player_choice == 'p' && computer_choice == 'r' || 
      player_choice == 'r' && computer_choice == 's' || 
      player_choice == 's' && computer_choice == 'p'
      display_winning_msg(player_choice)
      display_player_pick(player_choice)
      puts "Player win!"
  else 
      display_winning_msg(computer_choice)
      display_computer_pick(computer_choice)
      puts "Computer win!"
  end
    puts "Do you like to play again sir ?"
  break unless gets.chomp.downcase == 'y'
    
end

puts "Good bye see you next time till be happy "
