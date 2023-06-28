def palindrome?(string)
  if string == string.reverse
    puts "It's a palindrome!"
  else
    puts "Nope! Not a palindrome!"
  end
end

palindrome?('madam')
palindrome?('butts')