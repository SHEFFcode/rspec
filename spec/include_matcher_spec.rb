RSpec.describe 'include matcher' do
  context 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end

    it {is_expected.to include('hot')}
  end

  context [10, 20, 30] do
    it 'checks for inclusion in the array, regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(10, 30)
    end

    it {is_expected.to include(30)}
  end

  describe ({a: 2, b: 4}) do
    it 'can check for key existance' do
      expect(subject).to include(:a) # Check for just the symbol regardless of value
      expect(subject).to include(:a, :b) # Check for just the symbol regardless of value
    end

    it 'can check for key value pairs' do
      expect(subject).to include(a: 2, b: 4) # check for both key and value
    end

    it {is_expected.to include(a: 2)} # simple synthax
  end
end