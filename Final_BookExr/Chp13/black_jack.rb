class Card
  attr_accessor :face, :suit, :value
  
  def initialize(face,suit,value)
    @face = face
    @suit = suit
    @value = value
  end
  
  def identify
    if self.face == "Ace"
      letter = "An"
    else
      letter = "A"
    end
    "#{letter} #{@face} of #{@suit}"
  end
end

class Player
  attr_accessor :hand, :player_name, :total
  
  def initialize
    @hand = []
    @total = 0
    @player_name = ""
  end
  
  def calculate_total
    @hand.each do |card|
      @total += card.value
    end
    @total
  end
  
  def display_hand
    hand_string = []
    @hand.each do |card|
      hand_string << card.identify
    end
    hand_string.join(", ")
  end
end