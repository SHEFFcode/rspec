class Card 
  attr_accessor :suite, :rank

  def initialize(rank, suite)
    @rank = rank
    @suite = suite
  end
end

# Example group, tests are also called examples in Rspec
RSpec.describe Card do
  # before do # this is the same as before(:example)
  #   @card = Card.new('Ace', 'Spades')
  # end

  let(:card) { Card.new('Ace', 'Spades') }  # let!(:card) would force the expression to evaluate before each block, instead of lazy loading as needed

  it 'has a suite' do
    expect(card.suite).to eq('Spades')
  end

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end

  it 'has a custom error message' do
    comparison = 'Ace'
    expect(card.rank).to eq(comparison), "Hey, I expected #{comparison}, but I got #{card.rank} instead!"
  end
end