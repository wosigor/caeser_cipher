def caesar_cipher(string, offset)
  offset %= 26
  chars = string.split("").map do |char|
    if char =~ /[^A-Za-z]/
      char
    else
      low_char = (char =~ /[a-z]/? "a" : "A")
      ((char.ord + offset - low_char.ord) % 26 + low_char.ord).chr
    end
  end
  p chars.join
end


puts "Enter string"
string = gets.chomp
puts "Enter offset"
offset = gets.to_i
caesar_cipher(string, offset)

