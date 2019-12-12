class Change
  attr_accessor(:value)

  def initialize(value)
    @value = value
  end

  def coin_combos
    coin_words = []
    cents = value * 100

    until (cents < 0.1)
      if (cents / 25) >= 1
        cents -= 25
        coin_words.push('quarter')
      elsif (cents / 10) >= 1
        cents -= 10
        coin_words.push('dime')
      elsif (cents / 5) >= 1
        cents -= 5
        coin_words.push('nickel')
      else
        cents -= 1
        coin_words.push('penny')
      end
    end
    coin_words
  end
end
