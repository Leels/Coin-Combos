class Change
  attr_accessor(:value)

  def initialize(value)
    @value = value
    @coin_words = []
  end

    def coin_combos
      @coin_words = [0,"quarters",0,"dimes",0,'nickels',0,'pennies']
      cents = value * 100

      while (cents > 0)
        if (cents / 25) >= 1
          cents -= 25
          @coin_words[0] += 1
        elsif (cents / 10) >= 1
          cents -= 10
          @coin_words[2] +=1
        elsif (cents / 5) >= 1
          cents -= 5
          @coin_words[4] += 1
        else
          cents -= 1
          @coin_words[6] += 1
        end
      end
      @coin_words
    end
  end
