# # 1. All players pick either Paper Rock or Scissors
# # 2. compare: paper > rock, rock > scissors, scissors > paper, or tie if same
# # 3. play again?
#
# CHOICES = { "p" => "Paper", "r" => "Rock", "s" => "Scissors" }
# puts "Welcoome to papers, Rock, Scissors!"
#
# def display_winnign_msg(winning_choice)
#   case winning_choice
#   when 'p'
#     puts "Papers wraps Rock!"
#   when 'r'
#     puts "Rock smashes Scissors"
#   when 's'
#     puts "Scissors cuts Papers!"
#   end
# end
#
# loop do
#   #player makes a pick
#   begin
#     puts "Pcik one which one do you think lucky for you : (p,r,s)"
#     player_choice = gets.chomp.downcase
#   end until CHOICES.keys.include?(player_choice)
#   #computer makes a pick
#   computer_choice = CHOICES.keys.sample
#
#   if player_choice == computer_choice
#     puts "Game Tie!"
#   elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p')
#     display_winnign_msg(player_choice)
#     puts "You win! :)"
#   else
#     display_winnign_msg(computer_choice)
#     puts "Computer win1 :("
#   end
#   puts "Play again"
#   break if gets.chomp.downcase != 'y'
#
# end
# puts "Good bye!"

# 1. All player pick either Paper ,Rock or Scissors
# 2. Compair paper > rock, rock > scissors, scissors > paper
# 3. Play again?

CHOICES = { 'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors' }
puts "Welcome to Paper, Rock, Scissors game!"

def display_winning_msg(winning_msg)
  
  case winning_msg
  when 'p'
    puts "Papers warps Rock!"
  when 'r'
    puts 'Rock mash scissors'
  when 's'
    puts "Scissors cuts papers"
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
      (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p')
      display_winning_msg(player_choice)
      puts "You win!"
    else 
      display_winning_msg(computer_choice)
      puts "Computer win!"
    end
    puts "Do you like to play again sir ?"
    break if gets.chomp.downcase != 'y'
    
end

puts "Good bye see you next time till be happy "






































