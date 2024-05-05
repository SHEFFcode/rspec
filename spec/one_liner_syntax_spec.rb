RSpec.describe 'shorthand synthax' do
  subject { 5 }

  context 'classic synthax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'one liner synthax' do
    it { is_expected.to eq(5) } # basically is_expected == expect(subject)
  end
end