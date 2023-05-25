#Start with psuedo code

# Ask user to input 2 numbers.
# Recieve input using Kernal.gets().chomp()
# Ask user whether to add, subtract, multiply, or divide.
# Perform the operation on the two numbers.
# Output the result.


Kernel.puts("Welcome to the calculator big homie.")

Kernel.puts("Input a number, pls...")

number_1 = Kernel.gets().chomp()

Kernel.puts("Input another number, pls...")

number_2 = Kernel.gets().chomp()

Kernel.puts("Would you like to 1) add, 2) subtract, 3) multiply, or 4) divide?")

answer = Kernel.gets().chomp()

result = case answer
        when "1"
            number_1.to_i() + number_2.to_i()
    
        when "2"
            number_1.to_i() - number_2.to_i()
        
        when "3"
            number_1.to_i() * number_2.to_i()
            
        when "4"
            number_1.to_i().to_f() / number_2.to_i().to_f()
        else
            Kernel.puts("Invalid input, try again.")
        end
Kernel.puts("The answer is #{result}!")
        
    
    