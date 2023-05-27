# Show two different ways to put the expected "Four score and " in front of it.

famous_words = "seven years ago..."

famous_words = "Four score and " + famous_words # concatonate using +

p famous_words

famous_words2 = "seven years ago..."

famous_words2 = famous_words2.prepend("Four score and ") #use prepend() method

p famous_words2

famous_words3 = "seven years ago..."

famous_words3 = "Four score and " << famous_words3 #concatonate using <<

p famous_words3

famous_words4 = "seven years ago..."

famous_words4 = "Four score and #{famous_words4}" #string interpolation

p famous_words4