letters = ('a'..'z').to_a
p letters
puts "Enter the word you want to encrypt:"
caesar_cipher = gets.chomp.downcase.split("")

p caesar_cipher

index_caesar_cipher = caesar_cipher.map do |letter|
  letters.index(letter)
end
p index_caesar_cipher

puts "enter the number to increase the index of the letter:
number should be between 1 and 25"
number = gets.chomp.to_i
new_index_caesar_cipher = index_caesar_cipher.map do |index|
  (index + number) % 26
end
result = letters.values_at(*new_index_caesar_cipher).join
puts "The encrypted word is: #{result}"
 


