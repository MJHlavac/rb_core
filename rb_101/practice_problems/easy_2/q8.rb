# Shorten the following sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice!(0, advice.index('house'))

p advice

# As a bonus, what happens if you use the String#slice method instead?
# Answer: will still return the slice, however,advice will remain the same as
# slice does not mutate the original string.