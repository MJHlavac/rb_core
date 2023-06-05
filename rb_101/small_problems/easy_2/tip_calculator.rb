# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate. The program must compute the tip and then display both the
# tip and the total amount of the bill.
# Modify your solution so it always prints the results with 2 decimal places.



def calculate_tip(percentage, bill)
  (percentage / 100) * bill
end

def prompt(msg)
  puts "=> #{msg}"
end

prompt("What was your bill?")

bill_amount = gets.chomp.to_f

prompt("What was your tip percentage?")

tip_percentage = gets.chomp.to_f

tip_amount = calculate_tip(tip_percentage, bill_amount)
bill_total = bill_amount + tip_amount

tip_amount = format("%.2f", tip_amount)
bill_total = format("%.2f", bill_total)

prompt("Your tip amount is $#{tip_amount}, and your total bill will be $#{bill_total}!")