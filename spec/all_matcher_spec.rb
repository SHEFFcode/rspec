RSpec.describe 'all_matcher' do
  it 'allows for aggregate matchers' do
    expect([5, 7, 9]).to all(be_odd)
    expect([5, 7, 9]).to all(be < 10)
  end

  describe [5, 7, 9] do
    it { is_expected.to all(be < 10) }
  end
end