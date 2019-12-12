# usr/bin/env ruby
require('./lib/coin_combos.rb')
puts "____________________________"
puts "Enter an amount to be converted into change: "
puts "----------------------------"
dollar_amount = Change.new(gets.chomp.to_f)
puts "Your change: "
puts dollar_amount.coin_combos
puts "----------------------------"
