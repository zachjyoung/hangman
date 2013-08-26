# As a gamemaster
# I want to choose a word at random
# So that the game isn't predictable

#should rechange random_word to a more descriptive word
random_words = ["pants", "cake", "andrew", "party", "when","butt-stallion"]
#added butt_stallion
random_word = random_words.sample
#rand doesn't sample dummy
hidden_word =  "_" * random_word.length

guessed_letters = []
guess_count = 9

puts "Yo dog, I heard you like Hangman.  Fancy a game?"

while guessed_letters != random_word
  puts "The word is  #{hidden_word}.  Not very helpful is it."
#rename guess count!
  puts "You have #{guess_count} guesses"
  puts "Guess a letter, note that if you guess more than one letter and you're wrong, you will lose!"
  player_guess = gets.chomp
   if player_guess.length > 1
    if player_guess == met
      puts "You did it, I never should have doubted you.  You guessed #{random_word} in #{guess_count}"
      break
    else
      puts "Oh no, the point is not to HANG the MAN.  The right answer was #{random_word}"
      break
    end
  end
end

# As a player
# I want to know how much of the word I've guessed
# So that I know how much remains

# As a player
# I want to see how many incorrect guesses I have remaining
# So that I know how much I should be worried

# As a gamemaster
# I want to prompt the user for input
# So that we can continue the game

# As a player
# I want to be able to guess a single letter or the whole word
# So that I can make progress

# As a gamemaster
# I want to check the player's guessed letter against the word
# So that I know which letters to unveil.

# As a gamemaster
# I want to check the player's guessed word
# So that I know if they won or not

# As a gamemaster
# I want to end the game when the player has no more chances
# So that the game remains challenging