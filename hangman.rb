#should rechange random_word to a more descriptive word
random_words = ["pants", "cake", "andrew", "party", "when"]
random_word = random_words.sample
hidden_word =  "_" * random_word.length

guessed_letters = []
guess_count = 9

play_game = false

puts "Yo dog, I heard you like Hangman.  Fancy a game? Answer (yes or no) "
play_game = gets.chomp

#nest the whole game in a loop
if play_game.downcase == "no"
  exit 
else
  while guessed_letters != random_word
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
      if guessed_letters.include?(player_guess)
        puts "Ah, ah, ah, you already guessed that, guess again"
        guess_count -= 1
      else
        guessed_letters << player_guess
        if random_word.include?(player_guess)
          puts "#{player_guess} was found in the word, good job"
          guess_count -= 1
        else
          guess_count -= 1
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
  end
end
