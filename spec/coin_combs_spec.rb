require ('rspec')
require ('pry')
require ('coin_combos')

describe ('#coin_combos') do
# it('will convert a dollar amount into a whole number') do
#   change = Change.new(1.00)
#   expect(change.coin_combos()).to(eq(100))
# end

# it('will will find a coin value when the inputted number is 1, 5, 10, or 25') do
#   quarter = Change.new(0.75)
#   expect(quarter.coin_combos()).to(eq(['quarter']))
# end
# it('will will find a coin value when the inputted number is 1, 5, 10, or 25') do
#   quarter = Change.new(0.75)
#   expect(quarter.coin_combos()).to(eq(['quarter', 'quarter', 'quarter']))

  it('will will find a coin value when the inputted number is 1, 5, 10, or 25') do
    quarter = Change.new(0.88)
    expect(quarter.coin_combos()).to(eq(['quarter', 'quarter', 'penny']))
end

end
