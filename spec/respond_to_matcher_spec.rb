class HotChocolate
  def drink
    'delicious'
  end

  def discard
    'plop'
  end

  def purchase(number)
    "Awesome, I just purchased #{number} of hot chocolates!!"
  end
end

RSpec.describe HotChocolate do
  it 'confirms that a subject can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it 'confirms that object can respond to a method with args' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:purchase).with(1).arguments }
end