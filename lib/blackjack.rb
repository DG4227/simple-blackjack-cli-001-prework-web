def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card_sum)
  puts "Your cards add up to #{card_sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_sum)
  puts "Sorry, you hit #{card_sum}. Thanks for playing!"
end

def initial_round
  hand = deal_card + deal_card
  display_card_total(hand)
  hand
end

def hit?(total)
  prompt_user
  input = get_user_input

  if input == "h"
    total += deal_card
  elsif input == "s"
    total
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome

  card_sum = initial_round

  until card_sum > 21
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
  end_game(card_sum)
end

