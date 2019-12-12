class Change
  attr_accessor(:value)

  def initialize(value)
    @value = value
  end

  def coin_counter(arr)
    # quarter = arr.count('quarter')
    # if quarter > 1
    #   quarter_output = quarter.to_s + ' quarters'
    # else
    #   quarter_output = '1 quarter'
    # end
    counts = Hash.new(0)
    arr.each { |coin| counts[coin] += 1 }
    if arr.count('quarter') > 0
      if arr.count('quarter') > 1
        puts (counts.fetch('quarter')).to_s + " quarters"
      else
      puts (counts.fetch('quarter')).to_s + " quarter"
    end
    if arr.count('dime') > 0
      puts (counts.fetch('dime')).to_s + " dime"
    end
    if arr.count('nickel') > 0
      puts (counts.fetch('nickel')).to_s + " nickel"
    end
    if arr.count('penny') > 0
      puts (counts.fetch('penny')).to_s + " penny"
    end
    end
  end

    def coin_combos
      coin_words = []
      cents = value * 100

      while (cents > 0)
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
      coin_counter(coin_words)
    end
  end

  # number = Change.new(1.29)
  # puts number.coin_combos
