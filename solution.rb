class Deck
    attr_accessor :cards
    def initialize
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        self.cards = []
        suits.each{|suit| ranks.each{|rank| self.cards.push(Card.new(suit, rank))}}
    end

    def choose_card
        deck_size =self.cards.count
        self.cards.delete_at(rand(deck_size))
    end
end

class Card
    attr_accessor :suit, :rank
    def initialize(suit, rank)
        self.suit = suit
        self.rank = rank
    end
end