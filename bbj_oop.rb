	cards = %w(ace 1 2 3 4 5 6 7 8 9 10 jack queen king)
  suit = %w(hearts diamond spade clover)

class Deck
  attr_accessor :player, :pc
  attr_reader :player, :pc
  def initialize(c,s)
  	 @c = []
     @s = []
	end

	def chosen_card
  	@c.each {|hands| puts hands}
	end
		
  def show_cards
     p " #{player} hands consists of #{chosen_cards}"
  end
end

deck = Deck.new(cards,suit)
deck.chosen_card

