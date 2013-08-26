puts "what is the word?"
word = gets.chomp

if word == word.reverse
  puts "it's a palindrome"
elsif word == 'bird'
  puts "the bird is the word"
else
  puts "it's not"
end