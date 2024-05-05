RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should check for a substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
    end

    it { is_expected.to start_with('cater') }
  end

  context [:a, :b, :c, :d] do
    it 'should check for elements at the beginning or end of array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b) # this will check the order, exact order at the start of the array
      expect(subject).to end_with(:d)
    end

    it {is_expected.to end_with(:c, :d)}
  end
end