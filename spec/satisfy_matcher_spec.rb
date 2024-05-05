RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }

  it 'is a pallindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'can accept a custom error message' do
    expect(subject).to satisfy('to be a pallindrome') { |value| value == value.reverse }
  end
end