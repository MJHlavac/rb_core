require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')

def prompt(message) # define the prompt
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

prompt(MESSAGES['welcome'])

# Main loop begin
loop do
  prompt(MESSAGES['loan_amount'])

  loan_amount = ''
  loop do
    loan_amount = Kernel.gets().chomp()
    if number?(loan_amount) && loan_amount.to_f > 0
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  prompt(MESSAGES['apr_rate'])

  apr_rate = ''
  loop do
    apr_rate = Kernel.gets().chomp()
    if number?(apr_rate) && apr_rate.to_f > 0
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  prompt(MESSAGES['duration'])

  duration_in_years = ''
  loop do
    duration_in_years = Kernel.gets().chomp()
    if number?(duration_in_years) && duration_in_years.to_i > 0
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  annual_interest_rate = apr_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  duration_in_months = duration_in_years.to_i * 12

  monthly_payment = loan_amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-duration_in_months)))

  prompt("Your monthly payment will be $#{format('%.2f', monthly_payment)}")

  prompt(MESSAGES['another_calculation'])

  answer = Kernel.gets().chomp()

  break unless answer.downcase == "y"
end

prompt(MESSAGES['goodbye'])
