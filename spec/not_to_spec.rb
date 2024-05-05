RSpec.describe 'not_to' do
  it 'should not equal' do
    expect('hello').not_to eq('Hello')
  end
end