# replace the word important with urgent

advice = "Few things in life are as important as house training your pet dinosaur."

advice['important'] = 'urgent'

p advice

# or another way to do it ex. change it back...

advice.gsub!('urgent', 'important')

p advice
