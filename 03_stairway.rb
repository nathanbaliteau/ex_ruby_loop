
def start
  puts "Let the party begin ! To win the game, you have to climb the ten-stairs stairway. 
  Throw the die (T) and climb a stair with a 5 or 6, go down by one with a 1 
  and stay where you are with a 2, 3 or 4. Quit the game (Q)."
  print "> "
end

def throw_or_quit
  answer = gets.chomp
  if answer != "T" && answer != "Q"
    puts "Your answer has not been understood. Throw the die with a 'T' or quit the game with a 'Q'."
    print "> "
    answer = gets.chomp
  elsif answer == "T"
    die = 1 + rand(6)
  else 
    exit
  end
  return die 
end

def score_announce (die)
  result = die
  if result.to_i == 1
    if score == 0
      score = 0
    else
      score = score - 1
    end
    puts "You made a #{die}, you go down by one stair. You are currently at stair n°#{score} !
    Throw the die with a 'T' to continue or quit the game with a 'Q'."
  elsif result.to_i == 2 || result.to_i == 3 || result.to_i == 4
    puts "You made a #{die}, you stay at stair n°#{score} !
    Throw the die with a 'T' to continue or quit the game with a 'Q'."
  else
    score = score + 1
    if score != 10
      puts "Great ! You made a #{die}, you go up by one stair. You are currently at stair n°#{score} !
      Throw the die with a 'T' to continue or quit the game with a 'Q'."
    else
      puts "Congratulations, you won the game ! You are at stair n°10 !"
      exit
    end
  end
  return score
end

def perform
  score = 0
  start
  score_announce (throw_or_quit)
end

perform



