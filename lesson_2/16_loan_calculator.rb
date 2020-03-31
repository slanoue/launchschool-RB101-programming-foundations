# Ask the user for three pieces of information
# - the loan amount
# - the annual percentage rate
# - the loan duration
#
# From the above user input, calculate the following
# - monthly interest rate
# - loan duration in months
#
# you can use the following formula
# m = p * (j / (1 - (1 + j)**(-n)))
#
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months
#
# Finally, don't forget to run your code through Rubocop.
#
# Hints:
#
# - Figure out what format your inputs need to be in. For example, should the interest rate be expressed as 5 or .05, if you mean 5% interest?
# - If you're working with Annual Percentage Rate (APR), you'll need to convert that to a monthly interest rate.
# - Be careful about the loan duration -- are you working with months or years? Choose variable names carefully to assist in remembering.

puts "Welcome to the loan calculator! We'll help you figure out how much your monthly loan payments will be."

# Ask use for loan amount
puts "What is your loan amount?"
loan_amount = gets.chomp.to_i

# Ask use for APR
puts "What is the Annual Percentage Rate (APR)?"
annual_percentage_rate = gets.chomp.to_f

# Ask use for loan duration
puts "What is the duration of the loan (in years)?"
loan_duration_years = gets.chomp.to_i

# Take the APR provided by the user and break it down into a monthly interest Rate
monthly_interest_rate = annual_percentage_rate / 12

# Take the loan duration (in years) and break it down into months
loan_duration_months = loan_duration_years * 12

# Then run each of the variables through the formula m = p * (j / (1 - (1 + j)**(-n)))
monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))

# Puts the result to the user
puts "Your monthly loan payment is $#{monthly_payment.to_i}"
