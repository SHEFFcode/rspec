RSpec.shared_context 'common' do
  before do 
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variables' do
    expect(@foods.length).to eq(0)
    @foods << 'Sushi'
    expect(@foods.length).to eq(1)
  end

  it 'can use instance variable in a different example' do
    expect(@foods.length).to eq(0) # it will be reassigned by the before block
  end

  it 'can use shared helper methods' do
    expect(some_helper_method).to eq(5)
  end
end