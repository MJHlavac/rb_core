answer = 42

def mess_with_it(some_number)
  some_number += 8
end

p mess_with_it(answer)

p answer - 8

# What will the answer be?
# 34 because answer was initialized outside of the method and the mess_with_it method
# does not mutate answer it remains 42 after the method is called.