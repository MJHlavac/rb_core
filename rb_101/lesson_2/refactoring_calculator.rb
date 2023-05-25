# Start with psuedo code

# Ask user to input 2 numbers.
# Recieve input using Kernal.gets().chomp()
# Ask user whether to add, subtract, multiply, or divide.
# Perform the operation on the two numbers.
# Output the result.

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Which language would you like to use? English or Spanish?")

language =''
loop do 
language = gets.chomp.downcase
  if language == "english" || language == "spanish"
    break
  else 
    puts "Invalid, please enter 'English' or 'Spanish'!"
  end
end

LANGUAGE = language

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  case op 
  when '1'
    'adding'
  when '2'
    'subtracting'
  when '3'
    'multiplying'
  when '4'
    'dividing'
  end
end

name = ''
loop do
prompt(messages('welcome', LANGUAGE))
name = Kernel.gets().chomp()

  if name.empty?
    prompt("Make sure you use a valid name.")
  else 
    break
  end
end

prompt("Hello #{name}!, Welcome to the calculator!")
loop do #main loop 
  
  number_1 = ''#must initialize the variable outside of the loop block to have access to it later on. 
  loop do
  prompt(MESSAGES['input1'])
  number_1 = Kernel.gets().chomp()
    if number?(number_1)
      break
    else
      prompt(MESSAGES['invalid_num'])
    end 
  end
  
  number_2 = ''
  loop do
  prompt(MESSAGES['input2'])
  number_2 = Kernel.gets().chomp()
  
    if number?(number_2)
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end
  
  # Use heredoc to define a multiline string <<-STRING (can be anything here..)
  # text
  # text etc
  # STRING (..as long as it matches)
  operator_prompt = <<-MSG
  What operation would you like to perform? 
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG
  
  prompt(operator_prompt)
  
  operator = ''
  
  loop do
    
  operator = Kernel.gets().chomp()
    
    if %w(1 2 3 4).include?(operator) # %w is an array of strings. include method is invoked to check if the operator is included in that array. 
      break
    else
      prompt(MESSAGES['invalid_input'])
    end
  end
  
  prompt("#{operation_to_message(operator)} the two numbers for you just a sec...")
  
  result = case operator
           when '1'
             number_1.to_f() + number_2.to_f()
      
           when '2'
             number_1.to_f() - number_2.to_f()
          
           when '3'
             number_1.to_f() * number_2.to_f()
              
           when '4'
             number_1.to_f() / number_2.to_f()
  end
  
  prompt("The answer is #{result}.")
  prompt(MESSAGES['another_try'])
  answer = Kernel.gets().chomp()
  
  break unless answer.downcase().start_with?('y')
end
prompt(MESSAGES['thanks_exit'])