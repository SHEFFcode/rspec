RSpec.describe 'predicate methods and matchers' do
  it 'can be tested with plain ruby methods' do
    result = 16 / 2
    expect(result.event?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    expect(16 / 2).to be_even
    expect(15).to be_odd
    expect([]).to be_empty
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end