# usr/bin/env ruby
require('./lib/coin_combos.rb')

puts "____________________________"
puts "Enter an amount to be converted into change: "
puts "----------------------------"
dollar_amount = Change.new(gets.chomp.to_f)
coin_combos = dollar_amount.coin_combos()
result = dollar_amount.coin_combos.join(" ").gsub("s ", "s, ")
.gsub("1 quarters", "1 quarter")
.gsub("1 dimes", "1 dime")
.gsub("1 nickels", "1 nickel")
.gsub("1 pennies", "1 penny")
puts "Your change: #{result}"
puts "----------------------------"
