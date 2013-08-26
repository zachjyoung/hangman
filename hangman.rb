#should rechange random_word to a more descriptive word
random_words = ["pants", "cake", "andrew", "party", "when"]
random_word = random_words.sample
hidden_word =  "_" * random_word.length

guessed_letters = []
guess_count = 9

play_game = 

puts "Yo dog, I heard you like Hangman.  Fancy a game? Answer (yes or no) "
play_game = gets.chomp

#nest the whole game in a loop
if play_game.downcase == "no"
  exit 
else
  while guessed_letters != random_word
  #change this, not very clear when you're trying to play
    puts hidden_word
    puts "letters guessed so far #{guessed_letters.join(",")}"
  #rename guess count!
    puts "You have #{guess_count} guesses"
    puts "Guess a letter, note that if you guess more than one letter and you're wrong, you will lose!"
    player_guess = gets.chomp
    if player_guess.length > 1
      if player_guess == random_word
        puts "You did it, I never should have doubted you.  You guessed #{random_word.upcase} in #{guess_count}"
        break
      else
        puts "Oh no, the point is not to HANG the MAN.  The right answer was #{random_word.upcase}"
        break
      end
  elsif player_guess.length == 1
      guessed_letters << player_guess
      if random_word.include?(player_guess)
        puts "#{player_guess} was found in the word, good job"
        guess_count -=1
      else
        guess_count -=1
        puts "Sorry no #{player_guess}'s, go fish."
      end
    end
    hidden_word = random_word.gsub(/[^"#{guessed_letters.join}"]/, "_")
    if player_guess == hidden_word
      puts "You did it, you guessed #{random_word.upcase} in #{guess_count} turns!"
      break
    elsif guess_count == 0
      puts "Cool try bro, but #{random_word.upcase} was the word."
      break
    end
  end
  puts "Would you like to play again?"
  puts play_game.downcase
end



 

# As a player
# I want to know how much of the word I've guessed
# So that I know how much remains   √

# As a player
# I want to see how many incorrect guesses I have remaining
# So that I know how much I should be worried   √

# As a gamemaster
# I want to prompt the user for input
# So that we can continue the game    √

# As a player
# I want to be able to guess a single letter or the whole word
# So that I can make progress    √

# As a gamemaster
# I want to check the player's guessed letter against the word
# So that I know which letters to unveil. 

# As a gamemaster
# I want to check the player's guessed word
# So that I know if they won or not √

# As a gamemaster
# I want to end the game when the player has no more chances
# So that the game remains challenging √