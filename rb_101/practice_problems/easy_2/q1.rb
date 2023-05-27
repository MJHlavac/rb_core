# In this hash of people and their age

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if "Spot" is present.
# Bonus: what are two other methods that would work?

p ages.include?("Spot")
p ages.member?("Spot")
p ages.key?("Spot")
p ages.has_key?("Spot")