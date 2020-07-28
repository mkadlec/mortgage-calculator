
# monthly_payment is monthly interest payment + principal_payment
monthly_payment = xxx
current_principal = xxx
# mortgage_rate is in the form of 0.05 for 5%
mortgage_rate = 0.03785

months = 0

begin
  interest_payment = (current_principal * mortgage_rate) / 12
  principal_payment = monthly_payment - interest_payment
  current_principal = current_principal - principal_payment
  months += 1
end while current_principal > 0

puts "Months to payoff: #{months}"
puts "Years to payoff: #{months/12}"
