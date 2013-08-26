
# As a gamemaster
# I want to choose a word at random
# So that the game isn't predictable

random_words = ["pants", "cake", "andrew", "party", "when"]

random_word = random_words.rand

hidden_word =  "_" * random_word.length

#should rechange random_word to a more descriptive word

guess_count = 9

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