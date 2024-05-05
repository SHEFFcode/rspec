RSpec.describe 'array includes a certain set of elements' do
  subject { [1, 2, 3] }

  context 'long form synthax' do
    it 'should check for presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3) # order of elements does not matter
      expect(subject).to contain_exactly(3, 2, 1) # order of elements does not matter
      expect(subject).to contain_exactly(1, 3, 2) # order of elements does not matter
    end

    it {is_expected.to contain_exactly(1, 2, 3)} # short hand synthax
  end
end