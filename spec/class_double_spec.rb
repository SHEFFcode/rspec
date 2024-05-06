class Deck
  def self.build
    # Build a whole bunch of cards
  end

end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end


RSpec.describe CardGame do
  it 'can only implement class methods that are described on a class' do
    deck_class = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const # Can only implement methods that exist on the class. As stubbed const replaces all instances of Deck with the stub
    expect(deck_class).to receive(:build).once

    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end