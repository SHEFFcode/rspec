RSpec.describe 'not_to' do
  it 'should not equal' do
    expect('hello').not_to eq('Hello')
  end

  it 'should not equal in terms of arrays' do
    expect [1, 2, 3].not_to equal([1, 2, 3])  # This is true because equal checks for memory space equality, instead of eq
  end
end